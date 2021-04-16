cd SimpleCSharpApp
dotnet build

if EXIST .\ILOutput GOTO CREATEIL
MD .\ILOutput
:CREATEIL

..\ildasm /all /METADATA /out=.\ILOutput\SimpleCSharpApp.il .\bin\Debug\net5.0\SimpleCSharpApp.dll
..\ildasm /out=.\ILOutput\SimpleCSharpApp.all.il .\bin\Debug\net5.0\SimpleCSharpApp.dll

pause
