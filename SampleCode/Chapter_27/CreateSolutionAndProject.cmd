dotnet new sln -n Chapter27_AllProjects 

dotnet new wpf -lang c# -n BinaryResourceApp -o .\BinaryResourceApp -f net5.0
dotnet sln .\Chapter27_AllProjects.sln add .\BinaryResourceApp

dotnet new wpf -lang c# -n MyBrushesLibrary -o .\MyBrushesLibrary -f net5.0
dotnet sln .\Chapter27_AllProjects.sln add .\MyBrushesLibrary

dotnet new wpf -lang c# -n ObjectResourcesApp -o .\ObjectResourcesApp -f net5.0
dotnet sln .\Chapter27_AllProjects.sln add .\ObjectResourcesApp
dotnet add ObjectResourcesApp reference MyBrushesLibrary

dotnet new wpf -lang c# -n SpinningButtonAnimationApp -o .\SpinningButtonAnimationApp -f net5.0
dotnet sln .\Chapter27_AllProjects.sln add .\SpinningButtonAnimationApp

dotnet new wpf -lang c# -n WpfStyles -o .\WpfStyles -f net5.0
dotnet sln .\Chapter27_AllProjects.sln add .\WpfStyles

dotnet new wpf -lang c# -n TreesAndTemplatesApp -o .\TreesAndTemplatesApp -f net5.0
dotnet sln .\Chapter27_AllProjects.sln add .\TreesAndTemplatesApp

dotnet new wpf -lang c# -n ButtonTemplate -o .\ButtonTemplate -f net5.0
dotnet sln .\Chapter27_AllProjects.sln add .\ButtonTemplate

pause