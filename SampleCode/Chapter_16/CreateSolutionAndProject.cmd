dotnet new sln -n Chapter16_AllProjects 

dotnet new console -lang c# -n CustomNamespaces -o .\CustomNamespaces -f net5.0
dotnet sln .\Chapter16_AllProjects.sln add .\CustomNamespaces

dotnet new console -lang c# -n FunWithConfiguration -o .\FunWithConfiguration -f net5.0
dotnet sln .\Chapter16_AllProjects.sln add .\FunWithConfiguration
dotnet add FunWithConfiguration package Microsoft.Extensions.Configuration.Json

dotnet new classlib -lang c# -n CarLibrary -o .\CarLibrary -f net5.0
dotnet sln .\Chapter16_AllProjects.sln add .\CarLibrary
dotnet add CSharpCarClient reference CarLibrary

dotnet new console -lang c# -n CSharpCarClient -o .\CSharpCarClient -f net5.0
dotnet sln .\Chapter16_AllProjects.sln add .\CSharpCarClient

dotnet new console -lang vb -n VisualBasicCarClient -o .\VisualBasicCarClient -f net5.0
dotnet sln .\Chapter16_AllProjects.sln add .\VisualBasicCarClient

dotnet new console -lang c# -n FunWithProbingPaths -o .\FunWithProbingPaths -f net5.0
dotnet sln .\Chapter16_AllProjects.sln add .\FunWithProbingPaths

pause