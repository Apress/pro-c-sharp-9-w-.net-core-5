dotnet new sln -n Chapter21_AllProjects 

dotnet new console -lang c# -n MyConnectionFactory -o .\MyConnectionFactory -f net5.0
dotnet sln .\Chapter21_AllProjects.sln add .\MyConnectionFactory
dotnet add MyConnectionFactory package Microsoft.Data.SqlClient
dotnet add MyConnectionFactory package System.Data.Common
dotnet add MyConnectionFactory package System.Data.Odbc
dotnet add MyConnectionFactory package System.Data.OleDb


dotnet new console -lang c# -n DataProviderFactory -o .\DataProviderFactory -f net5.0
dotnet sln .\Chapter21_AllProjects.sln add .\DataProviderFactory
dotnet add DataProviderFactory package Microsoft.Data.SqlClient
dotnet add DataProviderFactory package System.Data.Common
dotnet add DataProviderFactory package System.Data.Odbc
dotnet add DataProviderFactory package System.Data.OleDb
dotnet add DataProviderFactory package Microsoft.Extensions.Configuration.Json


dotnet new console -lang c# -n AutoLot.DataReader -o .\AutoLot.DataReader -f net5.0
dotnet sln .\Chapter21_AllProjects.sln add .\AutoLot.DataReader
dotnet add AutoLot.DataReader package Microsoft.Data.SqlClient

dotnet new console -lang c# -n AutoLot.Dal -o .\AutoLot.Dal -f net5.0
dotnet sln .\Chapter21_AllProjects.sln add .\AutoLot.Dal
dotnet add AutoLot.Dal package Microsoft.Data.SqlClient

dotnet new console -lang c# -n AutoLot.Client -o .\AutoLot.Client -f net5.0
dotnet sln .\Chapter21_AllProjects.sln add .\AutoLot.Client
dotnet add AutoLot.Client package Microsoft.Data.SqlClient
dotnet add AutoLot.Client reference AutoLot.Dal

dotnet new console -lang c# -n  -o .\ -f net5.0
dotnet sln .\Chapter21_AllProjects.sln add .\




pause