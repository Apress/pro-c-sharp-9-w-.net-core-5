dotnet new sln -n SimpleCSharpConsoleApp -o .\VisualStudioCode

dotnet new console -lang c# -n SimpleCSharpConsoleApp -o .\VisualStudioCode\SimpleCSharpConsoleApp -f net5.0
dotnet sln .\VisualStudioCode\SimpleCSharpConsoleApp.sln add .\VisualStudioCode\SimpleCSharpConsoleApp

pause