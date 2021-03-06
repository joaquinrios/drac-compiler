/*
  Drac compiler - Program driver.
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
using System.IO;
using System.Text;

namespace Drac {

    public class Driver {

        const string VERSION = "0.5";

        //-----------------------------------------------------------
        static readonly string[] ReleaseIncludes = {
            "Lexical analysis",
            "Syntactic analysis",
            "AST construction", 
            "Semantic analysis",
            "Wat code generation"
        };

        //-----------------------------------------------------------
        void PrintAppHeader() {
            Console.WriteLine("Drac compiler, version " + VERSION);
            Console.WriteLine(
                "Copyright \u00A9 2013-2021 by A. Ortiz, ITESM CEM.");
            Console.WriteLine("This program is free software; you may "
                + "redistribute it under the terms of");
            Console.WriteLine("the GNU General Public License version 3 or "
                + "later.");
            Console.WriteLine("This program has absolutely no warranty.");
        }

        //-----------------------------------------------------------
        void PrintReleaseIncludes() {
            Console.WriteLine("Included in this release:");
            foreach (var phase in ReleaseIncludes) {
                Console.WriteLine("   * " + phase);
            }
        }

        //-----------------------------------------------------------
        void Run(string[] args) {

            PrintAppHeader();
            Console.WriteLine();
            PrintReleaseIncludes();
            Console.WriteLine();

            if (args.Length < 1) {
                Console.Error.WriteLine(
                    "Please specify the name of the input file.");
                Environment.Exit(1);
            }

            try {
                if (args.Length > 1){
                    var directoryPath = args[0];
                    var paths = Directory.GetFiles(directoryPath);
                    foreach (var path in paths)
                    {
                        var input = File.ReadAllText(path);
                        var outputPath = "generated/" + Path.GetFileName(Path.ChangeExtension(path, ".wat"));
                        var parser = new Parser(
                            new Scanner(input).Scan().GetEnumerator());
                        var program = parser.Program();
                        Console.WriteLine("----");
                        Console.Write("Syntax OK\n");
                        var semantic1 = new FirstSemanticVisitor();
                        semantic1.Visit((dynamic) program);
                        var semantic2 = new SecondSemanticVisitor(semantic1.TableVariables, semantic1.TableFunctions);
                        semantic2.Visit((dynamic) program);

                        Console.WriteLine("Semantics OK.\n");
                        var codeGenerator = new WatVisitor(semantic2.TableVariables, semantic2.TableFunctions);
                        File.WriteAllText(
                          outputPath,
                          codeGenerator.Visit((dynamic) program));
                        
                        Console.WriteLine(
                          "Created Wat (WebAssembly text format) file "
                          + $"'{outputPath}'.");
                        Console.WriteLine("----\n");
                    }
                } else {
                    var inputPath = args[0];
                    var outputPath = "generated/" + Path.GetFileName(Path.ChangeExtension(inputPath, ".wat"));
                    var input = File.ReadAllText(inputPath);
                    var parser = new Parser(
                        new Scanner(input).Scan().GetEnumerator());
                    var program = parser.Program();
                    
                    Console.Write("Syntax OK\n");

                    var semantic1 = new FirstSemanticVisitor();
                    semantic1.Visit((dynamic) program);
                    var semantic2 = new SecondSemanticVisitor(semantic1.TableVariables, semantic1.TableFunctions);
                    semantic2.Visit((dynamic) program);
                    Console.WriteLine("Semantics OK.\n");

                    var codeGenerator = new WatVisitor(semantic2.TableVariables, semantic2.TableFunctions);
                    File.WriteAllText(
                      outputPath,
                      codeGenerator.Visit((dynamic) program));
                    
                    Console.WriteLine(
                      "Created Wat (WebAssembly text format) file "
                      + $"'{outputPath}'.");
                    
                }

            } catch (Exception e) {

                if (e is FileNotFoundException 
                    || e is SyntaxError
                    || e is SemanticError) {
                    Console.Error.WriteLine(e.Message);
                    Environment.Exit(1);
                }

                throw;
            }
        }

        //-----------------------------------------------------------
        public static void Main(string[] args) {
            new Driver().Run(args);
        }
    }
}
