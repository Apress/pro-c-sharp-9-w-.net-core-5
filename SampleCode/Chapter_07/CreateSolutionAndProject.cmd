dotnet new sln -n Chapter7_AllProjects 

dotnet new console -lang c# -n SimpleException -o .\SimpleException -f net5.0
dotnet sln .\Chapter7_AllProjects.sln add .\SimpleException

dotnet new console -lang c# -n CustomException -o .\CustomException -f net5.0
dotnet sln .\Chapter7_AllProjects.sln add .\CustomException

dotnet new console -lang c# -n ProcessMultipleExceptions -o .\ProcessMultipleExceptions -f net5.0
dotnet sln .\Chapter7_AllProjects.sln add .\ProcessMultipleExceptions

pause