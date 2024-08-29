/* Option 1: C# as a script (top-level statement programming)
   First, run "dotnet tool install -g dotnet-script" in the shell,
   followed by "export PATH="$PATH:/home/runner/.dotnet/tools"",
   followed by "export DOTNET_ROOT=$(dirname $(readlink -f $(which dotnet)))"
*/
// Run with "dotnet script Hello/hello.cs"
Console.WriteLine("Hello, world!");

  
/* Option 2: Traditional C# (if you're using something like GitHub Codespaces)
  In CodeSpaces: run "sudo apt update -y && sudo apt install mono-complete -y" 
  In Replit: run the compile line below and select "mono.out"
*/
// Run with "mcs -out:Hello/hello.exe Hello/hello.cs && mono Hello/hello.exe"
using System;
class Hello {
  public static void Main(string[] args) {
    Console.WriteLine("Hello, world!");
  }
}
// Hello.Main(null);  // Uncomment if using 'dotnet script'
