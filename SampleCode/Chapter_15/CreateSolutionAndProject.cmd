dotnet new sln -n Chapter15_AllProjects 

dotnet new console -lang c# -n ThreadStats -o .\ThreadStats -f net5.0
dotnet sln .\Chapter15_AllProjects.sln add .\ThreadStats

dotnet new console -lang c# -n SimpleMultiThreadApp -o .\SimpleMultiThreadApp -f net5.0
dotnet sln .\Chapter15_AllProjects.sln add .\SimpleMultiThreadApp

dotnet new console -lang c# -n AddWithThreads -o .\AddWithThreads -f net5.0
dotnet sln .\Chapter15_AllProjects.sln add .\AddWithThreads

dotnet new console -lang c# -n MultiThreadedPrinting -o .\MultiThreadedPrinting -f net5.0
dotnet sln .\Chapter15_AllProjects.sln add .\MultiThreadedPrinting

dotnet new console -lang c# -n TimerApp -o .\TimerApp -f net5.0
dotnet sln .\Chapter15_AllProjects.sln add .\TimerApp

dotnet new console -lang c# -n ThreadPoolApp -o .\ThreadPoolApp -f net5.0
dotnet sln .\Chapter15_AllProjects.sln add .\ThreadPoolApp

dotnet new wpf -lang c# -n DataParallelismWithForEach -o .\DataParallelismWithForEach -f net5.0
dotnet sln .\Chapter15_AllProjects.sln add .\DataParallelismWithForEach
dotnet add DataParallelismWithForEach package System.Drawing.Common

dotnet new console -lang c# -n MyEBookReader -o .\MyEBookReader -f net5.0
dotnet sln .\Chapter15_AllProjects.sln add .\MyEBookReader

dotnet new console -lang c# -n PLINQDataProcessingWithCancellation -o .\PLINQDataProcessingWithCancellation -f net5.0
dotnet sln .\Chapter15_AllProjects.sln add .\PLINQDataProcessingWithCancellation

dotnet new console -lang c# -n FunWithCSharpAsync -o .\FunWithCSharpAsync -f net5.0
dotnet sln .\Chapter15_AllProjects.sln add .\FunWithCSharpAsync

dotnet new wpf -lang c# -n PictureHandlerWithAsyncAwait -o .\PictureHandlerWithAsyncAwait -f net5.0
dotnet sln .\Chapter15_AllProjects.sln add .\PictureHandlerWithAsyncAwait
dotnet add PictureHandlerWithAsyncAwait package System.Drawing.Common

pause