dotnet new sln -n Chapter17_AllProjects 

dotnet new console -lang c# -n MyTypeViewer -o .\MyTypeViewer -f net5.0
dotnet sln .\Chapter17_AllProjects.sln add .\MyTypeViewer

dotnet new console -lang c# -n ExternalAssemblyReflector -o .\ExternalAssemblyReflector -f net5.0
dotnet sln .\Chapter17_AllProjects.sln add .\ExternalAssemblyReflector

dotnet new console -lang c# -n FrameworkAssemblyViewer -o .\FrameworkAssemblyViewer -f net5.0
dotnet sln .\Chapter17_AllProjects.sln add .\FrameworkAssemblyViewer
dotnet add .\FrameworkAssemblyViewer package Microsoft.EntityFrameworkCore -v 5.0.0

dotnet new console -lang c# -n LateBindingApp -o .\LateBindingApp -f net5.0
dotnet sln .\Chapter17_AllProjects.sln add .\LateBindingApp

dotnet new console -lang c# -n ApplyingAttributes -o .\ApplyingAttributes -f net5.0
dotnet sln .\Chapter17_AllProjects.sln add .\ApplyingAttributes
dotnet add ApplyingAttributes package System.Text.Json

dotnet new classlib -lang c# -n AttributedCarLibrary -o .\AttributedCarLibrary -f net5.0
dotnet sln .\Chapter17_AllProjects.sln add .\AttributedCarLibrary

dotnet new console -lang c# -n VehicleDescriptionAttributeReader -o .\VehicleDescriptionAttributeReader -f net5.0
dotnet sln .\Chapter17_AllProjects.sln add .\VehicleDescriptionAttributeReader
dotnet add VehicleDescriptionAttributeReader reference .\AttributedCarLibrary

dotnet new console -lang c# -n VehicleDescriptionAttributeReaderLateBinding -o .\VehicleDescriptionAttributeReaderLateBinding -f net5.0
dotnet sln .\Chapter17_AllProjects.sln add .\VehicleDescriptionAttributeReaderLateBinding


dotnet new sln -n Chapter17_ExtendableApp

dotnet new classlib -lang c# -n CommonSnappableTypes -o .\CommonSnappableTypes -f net5.0
dotnet sln .\Chapter17_ExtendableApp.sln add .\CommonSnappableTypes

dotnet new classlib -lang c# -n CSharpSnapIn -o .\CSharpSnapIn -f net5.0
dotnet sln .\Chapter17_ExtendableApp.sln add .\CSharpSnapIn
dotnet add CSharpSnapin reference CommonSnappableTypes

dotnet new classlib -lang vb -n VBSnapIn -o .\VBSnapIn -f net5.0
dotnet sln .\Chapter17_ExtendableApp.sln add .\VBSnapIn
dotnet add VBSnapIn reference CommonSnappableTypes

dotnet new console -lang c# -n MyExtendableApp -o .\MyExtendableApp -f net5.0
dotnet sln .\Chapter17_ExtendableApp.sln add .\MyExtendableApp
dotnet add MyExtendableApp reference CommonSnappableTypes













dotnet new console -lang c# -n  -o .\ -f net5.0
dotnet sln .\Chapter17_AllProjects.sln add .\


pause