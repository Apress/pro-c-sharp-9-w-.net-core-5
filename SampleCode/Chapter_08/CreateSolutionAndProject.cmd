dotnet new sln -n Chapter8_AllProjects 

dotnet new console -lang c# -n CustomInterfaces -o .\CustomInterfaces -f net5.0
dotnet sln .\Chapter8_AllProjects.sln add .\CustomInterfaces

dotnet new console -lang c# -n InterfaceNameClash -o .\InterfaceNameClash -f net5.0
dotnet sln .\Chapter8_AllProjects.sln add .\InterfaceNameClash

dotnet new console -lang c# -n CloneablePoint -o .\CloneablePoint -f net5.0
dotnet sln .\Chapter8_AllProjects.sln add .\CloneablePoint

dotnet new console -lang c# -n ComparableCar -o .\ComparableCar -f net5.0
dotnet sln .\Chapter8_AllProjects.sln add .\ComparableCar

dotnet new console -lang c# -n CustomEnumerator -o .\CustomEnumerator -f net5.0
dotnet sln .\Chapter8_AllProjects.sln add .\CustomEnumerator

dotnet new console -lang c# -n CustomEnumeratorWithYield -o .\CustomEnumeratorWithYield -f net5.0
dotnet sln .\Chapter8_AllProjects.sln add .\CustomEnumeratorWithYield

dotnet new console -lang c# -n InterfaceHierarchy -o .\InterfaceHierarchy -f net5.0
dotnet sln .\Chapter8_AllProjects.sln add .\InterfaceHierarchy

dotnet new console -lang c# -n MiInterfaceHierarchy -o .\MiInterfaceHierarchy -f net5.0
dotnet sln .\Chapter8_AllProjects.sln add .\MiInterfaceHierarchy

pause