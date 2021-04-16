dotnet new sln -n Chapter23_AllProjects 

dotnet new classlib -lang c# -n AutoLot.Models -o .\AutoLot.Models -f net5.0
dotnet sln .\Chapter23_AllProjects.sln add .\AutoLot.Models
dotnet add AutoLot.Models package Microsoft.EntityFrameworkCore.Abstractions
dotnet add AutoLot.Models package System.Text.Json

dotnet new classlib -lang c# -n AutoLot.Dal -o .\AutoLot.Dal -f net5.0
dotnet sln .\Chapter23_AllProjects.sln add .\AutoLot.Dal
dotnet add AutoLot.Dal reference AutoLot.Models
dotnet add AutoLot.Dal package Microsoft.EntityFrameworkCore
dotnet add AutoLot.Dal package Microsoft.EntityFrameworkCore.Design
dotnet add AutoLot.Dal package Microsoft.EntityFrameworkCore.SqlServer
dotnet add AutoLot.Dal package Microsoft.EntityFrameworkCore.Tools

dotnet new xunit -lang c# -n AutoLot.Dal.Tests -o .\AutoLot.Dal.Tests -f net5.0
dotnet sln .\Chapter23_AllProjects.sln add AutoLot.Dal.Tests
dotnet add AutoLot.Dal.Tests package Microsoft.EntityFrameworkCore
dotnet add AutoLot.Dal.Tests package Microsoft.EntityFrameworkCore.SqlServer
dotnet add AutoLot.Dal.Tests package Microsoft.Extensions.Configuration.Json
dotnet remove AutoLot.Dal.Tests package Microsoft.NET.Test.Sdk 
dotnet add AutoLot.Dal.Tests package Microsoft.NET.Test.Sdk 


dotnet add AutoLot.Dal.Tests reference AutoLot.Dal
dotnet add AutoLot.Dal.Tests reference AutoLot.Models


pause