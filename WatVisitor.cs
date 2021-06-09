/*
  Drac compiler - Parent Node class for the AST (Abstract Syntax Tree).
  Authors:
  Irving Fuentes Aguilera A01745759
  Joaquin Rios Corvera A01375441
  Jordan Gonzalez Bustamante A01745993

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

using System;
using System.Text;
using System.Collections.Generic;

namespace Drac {
  class CodePoints {
    public static IList<int> AsCodePoints(String str) {
      var temp = str;
      temp = str.Substring(1, temp.Length - 2);
      var result = new List<int>(temp.Length);
      if (temp.Length == 0) {
        return result;
      }
      var i = 0;
      while (temp.Length >= 0) {
        var move = 0;
        var isSpecialCharacter = temp[0] == '\\';
        if (isSpecialCharacter) {
            var nextCharacter = temp[1];
            switch (nextCharacter) {
              case 'n':
                result.Add(10);
                move = 2;
                break;
              case 'r':
                result.Add(13);
                move = 2;
                break;
              case 't':
                result.Add(9);
                move = 2;
                break;
              case '\\':
                result.Add(92);
                move = 2;
                break;
              case '\'':
                result.Add(39);
                move = 2;
                break;
              case '"':
                result.Add(34);
                move = 2;
                break;
              case 'u':
                var sc = temp.Substring(2, 6);
                var codePoint = int.Parse(sc, System.Globalization.NumberStyles.HexNumber);
                result.Add(codePoint);
                move = 6;
                break;
              
              default:
                break;
            }
        } else {
          result.Add(char.ConvertToUtf32(temp, i));
          if (char.IsHighSurrogate(temp, i)) {
            move = 2;
          } else {
            move = 1;
          }
          
        }
        if (temp.Length == move) {
          temp = "";
          break;
        } else {
          temp = temp.Substring(move);
        }

      }
      return result;
    }
  }
  class WatVisitor {
    HashSet<string> TableVariables;
    IDictionary<string, FunctionRecord> TableFunctions;

    int labelCounter = 0;
    Stack<string> blockLabels = new Stack<string>();
    string inFunction = null;

    HashSet<string> FunctionsThatDrop = new HashSet<string>();
    

    public string GenerateLabel() {
      return $"${labelCounter++:00000}";
    }

    public WatVisitor(HashSet<string> tableVariables, IDictionary<string, FunctionRecord> tableFunctions) {
      this.TableFunctions = tableFunctions;
      this.TableVariables = tableVariables;

      FunctionsThatDrop.Add("printi");
      FunctionsThatDrop.Add("printc");
      FunctionsThatDrop.Add("prints");
      FunctionsThatDrop.Add("println");
      FunctionsThatDrop.Add("add");
      FunctionsThatDrop.Add("set");

    }


    string VisitChildren(Node node) {
      var sb = new StringBuilder();
      foreach (var n in node) {
        sb.Append(Visit((dynamic) n));
      }
      return sb.ToString();
    }

    public string Visit(Program node) {
      return ";; WebAssembly text format code generated by "
        + "the drac compiler.\n\n"
        + "(module\n"
        + "  (import \"drac\" \"printi\" (func $printi (param i32) (result i32)))\n"
        + "  (import \"drac\" \"printc\" (func $printc (param i32) (result i32)))\n"
        + "  (import \"drac\" \"prints\" (func $prints (param i32) (result i32)))\n"
        + "  (import \"drac\" \"println\" (func $println (result i32)))\n"
        + "  (import \"drac\" \"readi\" (func $readi (result i32)))\n"
        + "  (import \"drac\" \"reads\" (func $reads (result i32)))\n"
        + "  (import \"drac\" \"new\" (func $new (param i32) (result i32)))\n"
        + "  (import \"drac\" \"size\" (func $size (param i32) (result i32)))\n"
        + "  (import \"drac\" \"add\" (func $add (param i32 i32) (result i32)))\n"
        + "  (import \"drac\" \"get\" (func $get (param i32 i32) (result i32)))\n"
        + "  (import \"drac\" \"set\" (func $set (param i32 i32 i32) (result i32)))\n"
        +    Visit((dynamic) node[0])
        + ")\n";
    }
    public string Visit(DeclarationList node) {
      var sb = new StringBuilder();
      foreach (var entry in TableVariables) {
        sb.Append($"(global ${entry} (mut i32) (i32.const 0))\n");
      }
      return sb.ToString() + VisitChildren(node);
    }

    public string Visit(VarDef node) {
      return "";
    }


    public string Visit(Function node) {
      var functionName = node.AnchorToken.Lexeme;
      inFunction = functionName;
      var export = "";
      if (functionName == "main") {
        export = "  (export \"main\")";
      }
      var result = 
      $"(func ${functionName}\n"
      + export
      + Visit((dynamic) node[0]) // ParamList
      + "  (result i32)\n"
      + "  (local $_temp i32)\n"
      + Visit((dynamic) node[1]) // VarDefList
      + Visit((dynamic) node[2]) // StatementList
      + "  i32.const 0\n" 
      + "  return\n"
      + ")\n";
      inFunction = null;
      return result;
    
    }

    public string Visit(ParamList node) {
      if (node.ChildrenLength > 0) {
        var parameters = node[0];
        var sb = new StringBuilder();
        foreach (var id in parameters) {
          var idName = id.AnchorToken.Lexeme;
          sb.Append($"  (param ${idName} i32)\n");
        }
        return sb.ToString();
      }
      return "";
    }

    public string Visit(VarDefList node) {
      if (node.ChildrenLength > 0) {
        var definitionList = node[0];
        var sb = new StringBuilder();
        foreach (var definition in definitionList) {
          foreach (var id in definition) {
            var idName = id.AnchorToken.Lexeme;
            sb.Append($"  (local ${idName} i32)\n");
          }
        }
        return sb.ToString();
      }
      return "";
    }

    public string Visit(StatementList node) {
      return VisitChildren(node);
    }

    public string Visit(Assignment node) {
      var idName = node[0].AnchorToken.Lexeme;
      var label = "global";
      if (TableFunctions[inFunction].value.Contains(idName)){
        label = "local";
      }
      return Visit((dynamic) node[1])
      + $"  {label}.set ${idName}\n";
    }

    public string Visit (IntLiteral node) {
      var value = node.AnchorToken.Lexeme;
      return $"  i32.const {value}\n";
    }

    public string Visit (CharLiteral node) {
      var code = CodePoints.AsCodePoints(node.AnchorToken.Lexeme);
      var value = code[0];
      return $"  i32.const {value}\n";
    }

    public string Visit(True node) {
      return "  i32.const 1\n";
    }
    
    public string Visit(False node) {
      return "  i32.const 0\n";
    }

    public string Visit(StringLiteral node) {
      var sb = new StringBuilder();
      var codes = CodePoints.AsCodePoints(node.AnchorToken.Lexeme);
      foreach (var _ in codes) {
        sb.Append("  local.get $_temp\n");
      }
      foreach (var code in codes) {
        sb.Append($"  i32.const {code}\n"
        + "  call $add\n"
        + "  drop\n\n");
      }
      return 
      "  i32.const 0\n"
      + "  call $new\n"
      + "  local.set $_temp\n"
      + "  local.get $_temp\n"
      + sb.ToString() + "\n";
    }

    public string Visit(Array node) {
      var sb = new StringBuilder();
      foreach (var _ in node[0]){
        sb.Append("  local.get $_temp\n");
      }
      foreach (var expression in node[0]) {
        sb.Append(Visit((dynamic) expression));
        sb.Append("  call $add\n");
        sb.Append("  drop\n");
      }
      
      return 
      "  i32.const 0\n"
      + "  call $new\n"
      + "  local.set $_temp\n"
      + "  local.get $_temp\n"
      + sb.ToString() + "\n";
    }

    public string Visit(If node) {
      var sb = new StringBuilder();
      foreach (var _ in node[2]) {
        sb.Append("  end\n");
      }
      return 
      Visit((dynamic) node[0]) 
      + "  if\n"
      + Visit((dynamic) node[1])
      + Visit((dynamic) node[2])
      + Visit((dynamic) node[3])
      + sb.ToString()
      + "  end\n";
    }

    public string Visit(ElseIf node) {
      return 
      "  else\n"
      + Visit((dynamic) node[0])
      + "    if\n"
      + Visit((dynamic) node[1]);
    }

    public string Visit(Else node) {
      if (node.ChildrenLength > 0) {
        return
        "  else\n"
        + VisitChildren(node[0]);
      }
      return "";
    }

    public string Visit(While node) {
      var blockLabel = GenerateLabel();
      blockLabels.Push(blockLabel);
      var loopLabel = GenerateLabel();
      var result = $"block {blockLabel}\n"
      + $"  loop {loopLabel}\n"
      + Visit((dynamic) node[0])
      + "  i32.eqz\n"
      + $"  br_if {blockLabel}\n"
      + Visit((dynamic) node[1])
      + $"  br {loopLabel}\n"
      + "  end\n"
      + "end\n";
      blockLabels.Pop();
      return result;
    }

    public string Visit(Do node) {
      var blockLabel = GenerateLabel();
      blockLabels.Push(blockLabel);
      var loopLabel = GenerateLabel();
      var result = $"block {blockLabel}\n"
      + $"  loop {loopLabel}\n"
      + Visit((dynamic) node[1])
      + Visit((dynamic) node[0])
      + "  i32.eqz\n"
      + $"  br_if {blockLabel}\n"
      + $"  br {loopLabel}\n"
      + "  end\n"
      + "end\n";
      blockLabels.Pop();
      return result;
    }

    public string Visit(Inc node) {
      var idName = node[0].AnchorToken.Lexeme;
      var label = "global";
      if (TableFunctions[inFunction].value.Contains(idName)){
        label = "local";
      }
      return 
      $"  {label}.get ${idName}\n"
      + "  i32.const 1\n"
      + "  i32.add\n"
      + $"  {label}.set ${idName}\n"
      ;
    }

    public string Visit(Dec node) {
      var idName = node[0].AnchorToken.Lexeme;
      var label = "global";
      if (TableFunctions[inFunction].value.Contains(idName)){
        label = "local";
      }
      return 
      $"  {label}.get ${idName}\n"
      + "  i32.const 1\n"
      + "  i32.sub\n"
      + $"  {label}.set ${idName}\n"
      ;
    }

    public string Visit(Node node) {
      return VisitChildren(node);
    }

    public string Visit(FunCall node) {
      var functionName = node.AnchorToken.Lexeme;

      return 
      VisitChildren(node[0])
      + $"  call ${functionName}\n";
    }

    public string Visit(StatementFunCall node) {
      return 
      VisitChildren(node)
      + "  drop\n";
    }

    public string Visit(Break node) {
      var currentLabel = blockLabels.Peek();
      return $"  br {currentLabel}\n";
    }

    public string Visit(Return node) {
      return 
      Visit((dynamic) node[0])
      + "  return\n";
    }

    public string Visit(Or node) {
      return
      Visit((dynamic) node[0]) 
      + "  if (result i32)\n"
      + "     i32.const 1\n"
      + "  else\n"
      + Visit((dynamic) node[1])
      + "    i32.eqz\n"
      + "    i32.eqz\n"
      + "  end\n";
    }

    public string Visit(And node) {
      return
      Visit((dynamic) node[0]) 
      + "  if (result i32)\n"
      + Visit((dynamic) node[1])
      + "    i32.eqz\n"
      + "    i32.eqz\n"
      + "  else\n"
      + "     i32.const 0\n"
      + "  end\n";
    }

    public string Visit(Equals node) {
      return
      VisitChildren(node)
      + "  i32.eq\n";
    }

    public string Visit(NotEquals node) {
      return
      VisitChildren(node)
      + "  i32.ne\n";
    }

    public string Visit(Less node) {
      return
      VisitChildren(node)
      + "  i32.lt_s\n";
    }

    public string Visit(LessEqual node) {
      return
      VisitChildren(node)
      + "  i32.le_s\n";
    }

    public string Visit(More node) {
      return
      VisitChildren(node)
      + "  i32.gt_s\n";
    }
    
    public string Visit(MoreEqual node) {
      return
      VisitChildren(node)
      + "  i32.ge_s\n";
    }

    public string Visit(Plus node) {
      return
      VisitChildren(node)
      + "  i32.add\n";
    }

    public string Visit(Neg node) {
      if (node.ChildrenLength > 1) {
        return
        VisitChildren(node)
        + "  i32.sub\n";
      }
      return 
      "  i32.const 0"
      + VisitChildren(node)
      + "  i32.sub\n";
    }

    public string Visit(Mul node) {
      return
      VisitChildren(node)
      + "  i32.mul\n";
    }

    public string Visit(Div node) {
      return
      VisitChildren(node)
      + "  i32.div_s\n";
    }

    public string Visit(Remainder node) {
      return
      VisitChildren(node)
      + "  i32.rem_s\n";
    }

    public string Visit(Not node) {
      return
      VisitChildren(node)
      + "  i32.eqz\n";
    }

    public string Visit(Identifier node) {
      var idName = node.AnchorToken.Lexeme;
      if (TableFunctions[inFunction].value.Contains(idName)){
        return $"  local.get ${idName}\n";
      }
      return $"  global.get ${idName}\n";
    }

  }
}