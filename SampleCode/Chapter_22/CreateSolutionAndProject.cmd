dotnet new sln -n Chapter22_AllProjects 

dotnet new console -lang c# -n AutoLot.Samples -o .\AutoLot.Samples -f net5.0
dotnet sln .\Chapter22_AllProjects.sln add .\AutoLot.Samples
dotnet add AutoLot.Samples package Microsoft.EntityFrameworkCore
dotnet add AutoLot.Samples package Microsoft.EntityFrameworkCore.Design
dotnet add AutoLot.Samples package Microsoft.EntityFrameworkCore.SqlServer
dotnet add AutoLot.Samples package Microsoft.EntityFrameworkCore.Tools


pause