dotnet new sln -n Chapter20_AllProjects 

dotnet new console -lang c# -n DirectoryApp -o .\DirectoryApp -f net5.0
dotnet sln .\Chapter20_AllProjects.sln add .\DirectoryApp

dotnet new console -lang c# -n DriveInfoApp -o .\DriveInfoApp -f net5.0
dotnet sln .\Chapter20_AllProjects.sln add .\DriveInfoApp

dotnet new console -lang c# -n SimpleFileIO -o .\SimpleFileIO -f net5.0
dotnet sln .\Chapter20_AllProjects.sln add .\SimpleFileIO

dotnet new console -lang c# -n FileStreamApp -o .\FileStreamApp -f net5.0
dotnet sln .\Chapter20_AllProjects.sln add .\FileStreamApp

dotnet new console -lang c# -n StreamWriterReaderApp -o .\StreamWriterReaderApp -f net5.0
dotnet sln .\Chapter20_AllProjects.sln add .\StreamWriterReaderApp

dotnet new console -lang c# -n StringReaderWriterApp -o .\StringReaderWriterApp -f net5.0
dotnet sln .\Chapter20_AllProjects.sln add .\StringReaderWriterApp

dotnet new console -lang c# -n BinaryWriterReader -o .\BinaryWriterReader -f net5.0
dotnet sln .\Chapter20_AllProjects.sln add .\BinaryWriterReader

dotnet new console -lang c# -n MyDirectoryWatcher -o .\MyDirectoryWatcher -f net5.0
dotnet sln .\Chapter20_AllProjects.sln add .\MyDirectoryWatcher

dotnet new console -lang c# -n SimpleSerialize -o .\SimpleSerialize -f net5.0
dotnet sln .\Chapter20_AllProjects.sln add .\SimpleSerialize

dotnet new console -lang c# -n  -o .\ -f net5.0
dotnet sln .\Chapter20_AllProjects.sln add .\

pause