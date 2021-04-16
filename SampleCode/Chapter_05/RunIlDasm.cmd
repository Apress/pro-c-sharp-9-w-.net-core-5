cd FunWithRecords
dotnet build

if EXIST .\ILOutput GOTO CREATEIL
MD .\ILOutput
:CREATEIL

..\ildasm /all /METADATA /out=.\ILOutput\records.il .\bin\Debug\net5.0\FunWithRecords.dll
..\ildasm /out=.\ILOutput\records.all.il .\bin\Debug\net5.0\FunWithRecords.dll

cd ..

pause
