dotnet new sln -n Chapter11_AllProjects 

dotnet new console -lang c# -n SimpleIndexer -o .\SimpleIndexer -f net5.0
dotnet sln .\Chapter11_AllProjects.sln add .\SimpleIndexer

dotnet new console -lang c# -n OverloadedOps -o .\OverloadedOps -f net5.0
dotnet sln .\Chapter11_AllProjects.sln add .\OverloadedOps

dotnet new console -lang c# -n CustomConversions -o .\CustomConversions -f net5.0
dotnet sln .\Chapter11_AllProjects.sln add .\CustomConversions

dotnet new console -lang c# -n ExtensionMethods -o .\ExtensionMethods -f net5.0
dotnet sln .\Chapter11_AllProjects.sln add .\ExtensionMethods

dotnet new console -lang c# -n InterfaceExtensions -o .\InterfaceExtensions -f net5.0
dotnet sln .\Chapter11_AllProjects.sln add .\InterfaceExtensions

dotnet new console -lang c# -n ForEachWithExtensionMethods -o .\ForEachWithExtensionMethods -f net5.0
dotnet sln .\Chapter11_AllProjects.sln remove .\ForEachWithExtensioMethods

dotnet new console -lang c# -n AnonymousTypes -o .\AnonymousTypes -f net5.0
dotnet sln .\Chapter11_AllProjects.sln add .\AnonymousTypes

dotnet new console -lang c# -n UnsafeCode -o .\UnsafeCode -f net5.0
dotnet sln .\Chapter11_AllProjects.sln add .\UnsafeCode

pause