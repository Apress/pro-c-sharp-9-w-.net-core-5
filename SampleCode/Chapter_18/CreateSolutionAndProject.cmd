dotnet new sln -n Chapter18_AllProjects 

dotnet new console -lang c# -n DynamicKeyword -o .\DynamicKeyword -f net5.0
dotnet sln .\Chapter18_AllProjects.sln add .\DynamicKeyword

dotnet new console -lang c# -n ExportDataToOfficeApp -o .\ExportDataToOfficeApp -f net5.0
dotnet sln .\Chapter18_AllProjects.sln add .\ExportDataToOfficeApp

dotnet new classlib -lang c# -n MathLibrary -o .\MathLibrary -f net5.0
dotnet sln .\Chapter18_AllProjects.sln add .\MathLibrary

dotnet new console -lang c# -n LateBindingWithDynamic -o .\LateBindingWithDynamic -f net5.0
dotnet sln .\Chapter18_AllProjects.sln add .\LateBindingWithDynamic

pause