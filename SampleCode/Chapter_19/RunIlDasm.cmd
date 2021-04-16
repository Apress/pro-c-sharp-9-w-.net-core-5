ildasm /all /METADATA /out=FirstSamples.il .\FirstSamples\bin\Debug\net5.0\FirstSamples.dll

ildasm /all /METADATA /out=.\RoundTrip\RoundTrip.il .\RoundTrip\bin\Debug\net5.0\RoundTrip.dll

ildasm /all /METADATA /out=.\CILTypesConsumer\CILTypesConsumer\CILTypesConsumer.il .\CILTypesConsumer\CILTypesConsumer\bin\Debug\netcoreapp3.1\CILTypesConsumer.dll

ildasm /all /METADATA /out=.\CILTypesConsumer\CILTypesConsumer\CILTypes.il .\CILTypes\bin\Debug\netcoreapp3.1\CILTypes.dll

pause
