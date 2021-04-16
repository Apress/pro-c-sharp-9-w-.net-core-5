dotnet new sln -n Chapter25_AllProjects 

dotnet new wpf -lang c# -n VisualLayoutTester -o .\VisualLayoutTester -f net5.0
dotnet sln .\Chapter25_AllProjects.sln add .\VisualLayoutTester

dotnet new wpf -lang c# -n MyWordPad -o .\MyWordPad -f net5.0
dotnet sln .\Chapter25_AllProjects.sln add .\MyWordPad

dotnet new wpf -lang c# -n WpfRoutedEvents -o .\WpfRoutedEvents -f net5.0
dotnet sln .\Chapter25_AllProjects.sln add .\WpfRoutedEvents

dotnet new wpf -lang c# -n WpfControlsAndAPIs -o .\WpfControlsAndAPIs -f net5.0
dotnet sln .\Chapter25_AllProjects.sln add .\WpfControlsAndAPIs
dotnet add WpfControlsAndAPIs package Microsoft.EntityFrameworkCore
dotnet add WpfControlsAndAPIs package Microsoft.EntityFrameworkCore.SqlServer
dotnet add WpfControlsAndAPIs package Microsoft.Extensions.Configuration
dotnet add WpfControlsAndAPIs package Microsoft.Extensions.Configuration.Json
dotnet sln .\Chapter25_AllProjects.sln add ..\Chapter_23\AutoLot.Models
dotnet sln .\Chapter25_AllProjects.sln add ..\Chapter_23\AutoLot.Dal
dotnet add WpfControlsAndAPIs reference ..\Chapter_23\AutoLot.Models
dotnet add WpfControlsAndAPIs reference ..\Chapter_23\AutoLot.Dal

dotnet new wpf -lang c# -n CustomDependencyProperty  -o .\CustomDependencyProperty -f net5.0
dotnet sln .\Chapter25_AllProjects.sln add .\CustomDependencyProperty


pause