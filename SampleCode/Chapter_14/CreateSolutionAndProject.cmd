dotnet new sln -n Chapter14_AllProjects 

dotnet new console -lang c# -n DefaultAppDomainApp -o .\DefaultAppDomainApp -f net5.0
dotnet sln .\Chapter14_AllProjects.sln add .\DefaultAppDomainApp

dotnet new classlib -lang c# -n ClassLibrary1 -o .\ClassLibrary1 -f net5.0
dotnet sln .\Chapter14_AllProjects.sln add .\ClassLibrary1
dotnet add DefaultAppDomainApp reference ClassLibrary1

dotnet new console -lang c# -n ProcessManipulator -o .\ProcessManipulator -f net5.0
dotnet sln .\Chapter14_AllProjects.sln add .\ProcessManipulator

pause