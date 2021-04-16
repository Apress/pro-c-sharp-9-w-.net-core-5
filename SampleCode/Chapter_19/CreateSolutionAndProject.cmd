dotnet new sln -n Chapter19_AllProjects 

dotnet new console -lang c# -n FirstSamples -o .\FirstSamples -f net5.0
dotnet sln .\Chapter19_AllProjects.sln add .\FirstSamples
dotnet add FirstSamples package Microsoft.NETCore.ILDAsm --version 5.0.0
dotnet add FirstSamples package Microsoft.NETCore.ILAsm --version 5.0.0

dotnet new console -lang c# -n RoundTrip -o .\RoundTrip -f net5.0
dotnet sln .\Chapter19_AllProjects.sln add .\RoundTrip

dotnet new console -lang c# -n DynamicAsmBuilder -o .\DynamicAsmBuilder -f net5.0
dotnet sln .\Chapter19_AllProjects.sln add .\DynamicAsmBuilder
dotnet add DynamicAsmBuilder package System.reflection.Emit

dotnet new console -lang c# -n CILCars -o .\CILCars -f net5.0
dotnet sln .\Chapter19_AllProjects.sln add .\CILCars

dotnet new console -lang c# -n CilTypesConsumer -o .\CilTypesConsumer -f net5.0
dotnet sln .\Chapter19_AllProjects.sln add .\CilTypesConsumer

pause