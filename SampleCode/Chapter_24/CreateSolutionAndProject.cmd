dotnet new sln -n Chapter24_AllProjects 

dotnet new wpf -lang c# -n WpfTesterApp -o .\WpfTesterApp -f net5.0
dotnet sln .\Chapter24_AllProjects.sln add .\WpfTesterApp

pause