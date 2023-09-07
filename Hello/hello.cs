/* 
First, run "dotnet tool install -g dotnet-script" in the shell,
followed by "export PATH="$PATH:/home/runner/.dotnet/tools"",
followed by "export DOTNET_ROOT=$(dirname $(readlink -f $(which dotnet)))"
*/
// Run with "dotnet script Hello/hello.cs"
Console.WriteLine("Hello, world!");

/* Same as: 
class Hello {
  public static void Main(string[] args) {
    Console.WriteLine("Hello, world!");
  }
}
Hello.Main(null);
*/
