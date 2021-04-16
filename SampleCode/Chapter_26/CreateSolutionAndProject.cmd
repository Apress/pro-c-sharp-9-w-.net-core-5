dotnet new sln -n Chapter26_AllProjects 

dotnet new wpf -lang c# -n RenderingWithShapes -o .\RenderingWithShapes -f net5.0
dotnet sln .\Chapter26_AllProjects.sln add .\RenderingWithShapes

dotnet new wpf -lang c# -n RenderingWithVisuals -o .\RenderingWithVisuals -f net5.0
dotnet sln .\Chapter26_AllProjects.sln add .\RenderingWithVisuals

dotnet new wpf -lang c# -n FunWithTransforms -o .\FunWithTransforms -f net5.0
dotnet sln .\Chapter26_AllProjects.sln add .\FunWithTransforms

dotnet new wpf -lang c# -n InteractiveLaserSign -o .\InteractiveLaserSign -f net5.0
dotnet sln .\Chapter26_AllProjects.sln add .\InteractiveLaserSign

pause