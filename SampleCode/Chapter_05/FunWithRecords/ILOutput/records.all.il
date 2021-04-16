
//  Microsoft (R) .NET IL Disassembler.  Version 5.0.0



// Metadata version: v4.0.30319
.assembly extern System.Runtime
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 5:0:0:0
}
.assembly extern System.Console
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 5:0:0:0
}
.assembly extern System.Collections
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 5:0:0:0
}
.assembly FunWithRecords
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                                   63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- The following custom attribute is added automatically, do not uncomment -------
  //  .custom instance void [System.Runtime]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 

  .custom instance void [System.Runtime]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 18 2E 4E 45 54 43 6F 72 65 41 70 70 2C 56   // ....NETCoreApp,V
                                                                                                              65 72 73 69 6F 6E 3D 76 35 2E 30 01 00 54 0E 14   // ersion=v5.0..T..
                                                                                                              46 72 61 6D 65 77 6F 72 6B 44 69 73 70 6C 61 79   // FrameworkDisplay
                                                                                                              4E 61 6D 65 00 )                                  // Name.
  .custom instance void [System.Runtime]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 0E 46 75 6E 57 69 74 68 52 65 63 6F 72 64   // ...FunWithRecord
                                                                                                      73 00 00 )                                        // s..
  .custom instance void [System.Runtime]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 05 44 65 62 75 67 00 00 )                   // ...Debug..
  .custom instance void [System.Runtime]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 )             // ...1.0.0.0..
  .custom instance void [System.Runtime]System.Reflection.AssemblyInformationalVersionAttribute::.ctor(string) = ( 01 00 05 31 2E 30 2E 30 00 00 )                   // ...1.0.0..
  .custom instance void [System.Runtime]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 0E 46 75 6E 57 69 74 68 52 65 63 6F 72 64   // ...FunWithRecord
                                                                                                      73 00 00 )                                        // s..
  .custom instance void [System.Runtime]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 0E 46 75 6E 57 69 74 68 52 65 63 6F 72 64   // ...FunWithRecord
                                                                                                    73 00 00 )                                        // s..
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.module FunWithRecords.dll
// MVID: {DF1B5D8E-DA6B-4DC8-B2FD-438227B612D7}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x0000015BC29C0000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi sealed beforefieldinit Microsoft.CodeAnalysis.EmbeddedAttribute
       extends [System.Runtime]System.Attribute
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void Microsoft.CodeAnalysis.EmbeddedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Attribute::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method EmbeddedAttribute::.ctor

} // end of class Microsoft.CodeAnalysis.EmbeddedAttribute

.class private auto ansi sealed beforefieldinit System.Runtime.CompilerServices.NullableAttribute
       extends [System.Runtime]System.Attribute
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void Microsoft.CodeAnalysis.EmbeddedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.AttributeUsageAttribute::.ctor(valuetype [System.Runtime]System.AttributeTargets) = ( 01 00 84 6B 00 00 02 00 54 02 0D 41 6C 6C 6F 77   // ...k....T..Allow
                                                                                                                                     4D 75 6C 74 69 70 6C 65 00 54 02 09 49 6E 68 65   // Multiple.T..Inhe
                                                                                                                                     72 69 74 65 64 00 )                               // rited.
  .field public initonly uint8[] NullableFlags
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(uint8 A_1) cil managed
  {
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Attribute::.ctor()
    IL_0006:  nop
    IL_0007:  ldarg.0
    IL_0008:  ldc.i4.1
    IL_0009:  newarr     [System.Runtime]System.Byte
    IL_000e:  dup
    IL_000f:  ldc.i4.0
    IL_0010:  ldarg.1
    IL_0011:  stelem.i1
    IL_0012:  stfld      uint8[] System.Runtime.CompilerServices.NullableAttribute::NullableFlags
    IL_0017:  ret
  } // end of method NullableAttribute::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(uint8[] A_1) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Attribute::.ctor()
    IL_0006:  nop
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  stfld      uint8[] System.Runtime.CompilerServices.NullableAttribute::NullableFlags
    IL_000e:  ret
  } // end of method NullableAttribute::.ctor

} // end of class System.Runtime.CompilerServices.NullableAttribute

.class private auto ansi sealed beforefieldinit System.Runtime.CompilerServices.NullableContextAttribute
       extends [System.Runtime]System.Attribute
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void Microsoft.CodeAnalysis.EmbeddedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.AttributeUsageAttribute::.ctor(valuetype [System.Runtime]System.AttributeTargets) = ( 01 00 4C 14 00 00 02 00 54 02 0D 41 6C 6C 6F 77   // ..L.....T..Allow
                                                                                                                                     4D 75 6C 74 69 70 6C 65 00 54 02 09 49 6E 68 65   // Multiple.T..Inhe
                                                                                                                                     72 69 74 65 64 00 )                               // rited.
  .field public initonly uint8 Flag
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(uint8 A_1) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Attribute::.ctor()
    IL_0006:  nop
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  stfld      uint8 System.Runtime.CompilerServices.NullableContextAttribute::Flag
    IL_000e:  ret
  } // end of method NullableContextAttribute::.ctor

} // end of class System.Runtime.CompilerServices.NullableContextAttribute

.class private abstract auto ansi sealed beforefieldinit '<Program>$'
       extends [System.Runtime]System.Object
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method private hidebysig static void  '<Main>$'(string[] args) cil managed
  {
    .entrypoint
    // Code size       593 (0x251)
    .maxstack  3
    .locals init (class FunWithRecords.Car V_0,
             class FunWithRecords.Car V_1,
             class FunWithRecords.CarRecord V_2,
             class FunWithRecords.CarRecord V_3,
             class FunWithRecords.CarRecord V_4,
             class FunWithRecords.CarRecord V_5)
    IL_0000:  ldstr      "Fun with Records!"
    IL_0005:  call       void [System.Console]System.Console::WriteLine(string)
    IL_000a:  nop
    IL_000b:  ldstr      "/*************** Classes *********************/"
    IL_0010:  call       void [System.Console]System.Console::WriteLine(string)
    IL_0015:  nop
    IL_0016:  newobj     instance void FunWithRecords.Car::.ctor()
    IL_001b:  dup
    IL_001c:  ldstr      "Honda"
    IL_0021:  callvirt   instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) FunWithRecords.Car::set_Make(string)
    IL_0026:  nop
    IL_0027:  dup
    IL_0028:  ldstr      "Pilot"
    IL_002d:  callvirt   instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) FunWithRecords.Car::set_Model(string)
    IL_0032:  nop
    IL_0033:  dup
    IL_0034:  ldstr      "Blue"
    IL_0039:  callvirt   instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) FunWithRecords.Car::set_Color(string)
    IL_003e:  nop
    IL_003f:  stloc.0
    IL_0040:  ldstr      "My car: "
    IL_0045:  call       void [System.Console]System.Console::WriteLine(string)
    IL_004a:  nop
    IL_004b:  ldloc.0
    IL_004c:  call       void '<Program>$'::'<<Main>$>g__DisplayCarStats|0_0'(class FunWithRecords.Car)
    IL_0051:  nop
    IL_0052:  call       void [System.Console]System.Console::WriteLine()
    IL_0057:  nop
    IL_0058:  ldstr      "Honda"
    IL_005d:  ldstr      "Pilot"
    IL_0062:  ldstr      "Blue"
    IL_0067:  newobj     instance void FunWithRecords.Car::.ctor(string,
                                                                 string,
                                                                 string)
    IL_006c:  stloc.1
    IL_006d:  ldstr      "Another variable for my car: "
    IL_0072:  call       void [System.Console]System.Console::WriteLine(string)
    IL_0077:  nop
    IL_0078:  ldloc.1
    IL_0079:  call       void '<Program>$'::'<<Main>$>g__DisplayCarStats|0_0'(class FunWithRecords.Car)
    IL_007e:  nop
    IL_007f:  call       void [System.Console]System.Console::WriteLine()
    IL_0084:  nop
    IL_0085:  ldstr      "Cars are the same\? {0}"
    IL_008a:  ldloc.0
    IL_008b:  ldloc.1
    IL_008c:  callvirt   instance bool [System.Runtime]System.Object::Equals(object)
    IL_0091:  box        [System.Runtime]System.Boolean
    IL_0096:  call       string [System.Runtime]System.String::Format(string,
                                                                      object)
    IL_009b:  call       void [System.Console]System.Console::WriteLine(string)
    IL_00a0:  nop
    IL_00a1:  ldstr      "Cars are the same reference\? {0}"
    IL_00a6:  ldloc.0
    IL_00a7:  ldloc.1
    IL_00a8:  ceq
    IL_00aa:  box        [System.Runtime]System.Boolean
    IL_00af:  call       string [System.Runtime]System.String::Format(string,
                                                                      object)
    IL_00b4:  call       void [System.Console]System.Console::WriteLine(string)
    IL_00b9:  nop
    IL_00ba:  ldstr      "/*************** RECORDS *********************/"
    IL_00bf:  call       void [System.Console]System.Console::WriteLine(string)
    IL_00c4:  nop
    IL_00c5:  ldstr      "Honda"
    IL_00ca:  ldstr      "Pilot"
    IL_00cf:  ldstr      "Blue"
    IL_00d4:  newobj     instance void FunWithRecords.CarRecord::.ctor(string,
                                                                       string,
                                                                       string)
    IL_00d9:  stloc.2
    IL_00da:  ldstr      "My car: "
    IL_00df:  call       void [System.Console]System.Console::WriteLine(string)
    IL_00e4:  nop
    IL_00e5:  ldloc.2
    IL_00e6:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_00eb:  call       void [System.Console]System.Console::WriteLine(string)
    IL_00f0:  nop
    IL_00f1:  ldstr      "Honda"
    IL_00f6:  ldstr      "Pilot"
    IL_00fb:  ldstr      "Blue"
    IL_0100:  newobj     instance void FunWithRecords.CarRecord::.ctor(string,
                                                                       string,
                                                                       string)
    IL_0105:  stloc.3
    IL_0106:  ldstr      "Another variable for my car: "
    IL_010b:  call       void [System.Console]System.Console::WriteLine(string)
    IL_0110:  nop
    IL_0111:  ldloc.3
    IL_0112:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0117:  call       void [System.Console]System.Console::WriteLine(string)
    IL_011c:  nop
    IL_011d:  call       void [System.Console]System.Console::WriteLine()
    IL_0122:  nop
    IL_0123:  ldstr      "CarRecords are the same\? {0}"
    IL_0128:  ldloc.2
    IL_0129:  ldloc.3
    IL_012a:  callvirt   instance bool FunWithRecords.CarRecord::Equals(class FunWithRecords.CarRecord)
    IL_012f:  box        [System.Runtime]System.Boolean
    IL_0134:  call       string [System.Runtime]System.String::Format(string,
                                                                      object)
    IL_0139:  call       void [System.Console]System.Console::WriteLine(string)
    IL_013e:  nop
    IL_013f:  ldstr      "CarRecords are the same reference\? {0}"
    IL_0144:  ldloc.2
    IL_0145:  ldloc.3
    IL_0146:  ceq
    IL_0148:  box        [System.Runtime]System.Boolean
    IL_014d:  call       string [System.Runtime]System.String::Format(string,
                                                                      object)
    IL_0152:  call       void [System.Console]System.Console::WriteLine(string)
    IL_0157:  nop
    IL_0158:  ldstr      "CarRecords are the same\? {0}"
    IL_015d:  ldloc.2
    IL_015e:  ldloc.3
    IL_015f:  call       bool FunWithRecords.CarRecord::op_Equality(class FunWithRecords.CarRecord,
                                                                    class FunWithRecords.CarRecord)
    IL_0164:  box        [System.Runtime]System.Boolean
    IL_0169:  call       string [System.Runtime]System.String::Format(string,
                                                                      object)
    IL_016e:  call       void [System.Console]System.Console::WriteLine(string)
    IL_0173:  nop
    IL_0174:  ldstr      "CarRecords are not the same\? {0}"
    IL_0179:  ldloc.2
    IL_017a:  ldloc.3
    IL_017b:  call       bool FunWithRecords.CarRecord::op_Inequality(class FunWithRecords.CarRecord,
                                                                      class FunWithRecords.CarRecord)
    IL_0180:  box        [System.Runtime]System.Boolean
    IL_0185:  call       string [System.Runtime]System.String::Format(string,
                                                                      object)
    IL_018a:  call       void [System.Console]System.Console::WriteLine(string)
    IL_018f:  nop
    IL_0190:  ldloc.3
    IL_0191:  stloc.s    V_4
    IL_0193:  ldstr      "Car Record copy results"
    IL_0198:  call       void [System.Console]System.Console::WriteLine(string)
    IL_019d:  nop
    IL_019e:  ldstr      "CarRecords are the same\? {0}"
    IL_01a3:  ldloc.s    V_4
    IL_01a5:  ldloc.3
    IL_01a6:  callvirt   instance bool FunWithRecords.CarRecord::Equals(class FunWithRecords.CarRecord)
    IL_01ab:  box        [System.Runtime]System.Boolean
    IL_01b0:  call       string [System.Runtime]System.String::Format(string,
                                                                      object)
    IL_01b5:  call       void [System.Console]System.Console::WriteLine(string)
    IL_01ba:  nop
    IL_01bb:  ldstr      "CarRecords are the same\? {0}"
    IL_01c0:  ldloc.s    V_4
    IL_01c2:  ldloc.3
    IL_01c3:  ceq
    IL_01c5:  box        [System.Runtime]System.Boolean
    IL_01ca:  call       string [System.Runtime]System.String::Format(string,
                                                                      object)
    IL_01cf:  call       void [System.Console]System.Console::WriteLine(string)
    IL_01d4:  nop
    IL_01d5:  call       void [System.Console]System.Console::WriteLine()
    IL_01da:  nop
    IL_01db:  ldloc.2
    IL_01dc:  callvirt   instance class FunWithRecords.CarRecord FunWithRecords.CarRecord::'<Clone>$'()
    IL_01e1:  dup
    IL_01e2:  ldstr      "Odyssee"
    IL_01e7:  callvirt   instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) FunWithRecords.CarRecord::set_Model(string)
    IL_01ec:  nop
    IL_01ed:  stloc.s    V_5
    IL_01ef:  ldstr      "My copied car:"
    IL_01f4:  call       void [System.Console]System.Console::WriteLine(string)
    IL_01f9:  nop
    IL_01fa:  ldloc.s    V_5
    IL_01fc:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0201:  call       void [System.Console]System.Console::WriteLine(string)
    IL_0206:  nop
    IL_0207:  ldstr      "Car Record copy using with expression results"
    IL_020c:  call       void [System.Console]System.Console::WriteLine(string)
    IL_0211:  nop
    IL_0212:  ldstr      "CarRecords are the same\? {0}"
    IL_0217:  ldloc.s    V_5
    IL_0219:  ldloc.2
    IL_021a:  callvirt   instance bool FunWithRecords.CarRecord::Equals(class FunWithRecords.CarRecord)
    IL_021f:  box        [System.Runtime]System.Boolean
    IL_0224:  call       string [System.Runtime]System.String::Format(string,
                                                                      object)
    IL_0229:  call       void [System.Console]System.Console::WriteLine(string)
    IL_022e:  nop
    IL_022f:  ldstr      "CarRecords are the same\? {0}"
    IL_0234:  ldloc.s    V_5
    IL_0236:  ldloc.2
    IL_0237:  ceq
    IL_0239:  box        [System.Runtime]System.Boolean
    IL_023e:  call       string [System.Runtime]System.String::Format(string,
                                                                      object)
    IL_0243:  call       void [System.Console]System.Console::WriteLine(string)
    IL_0248:  nop
    IL_0249:  call       string [System.Console]System.Console::ReadLine()
    IL_024e:  pop
    IL_024f:  nop
    IL_0250:  ret
  } // end of method '<Program>$'::'<Main>$'

  .method assembly hidebysig static void 
          '<<Main>$>g__DisplayCarStats|0_0'(class FunWithRecords.Car c) cil managed
  {
    // Code size       53 (0x35)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "Car Make: {0}"
    IL_0006:  ldarg.0
    IL_0007:  callvirt   instance string FunWithRecords.Car::get_Make()
    IL_000c:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_0011:  nop
    IL_0012:  ldstr      "Car Model: {0}"
    IL_0017:  ldarg.0
    IL_0018:  callvirt   instance string FunWithRecords.Car::get_Model()
    IL_001d:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_0022:  nop
    IL_0023:  ldstr      "Car Color: {0}"
    IL_0028:  ldarg.0
    IL_0029:  callvirt   instance string FunWithRecords.Car::get_Color()
    IL_002e:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_0033:  nop
    IL_0034:  ret
  } // end of method '<Program>$'::'<<Main>$>g__DisplayCarStats|0_0'

} // end of class '<Program>$'

.class private auto ansi beforefieldinit FunWithRecords.Car
       extends [System.Runtime]System.Object
{
  .field private initonly string '<Make>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private initonly string '<Model>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private initonly string '<Color>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method public hidebysig specialname instance string 
          get_Make() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string FunWithRecords.Car::'<Make>k__BackingField'
    IL_0006:  ret
  } // end of method Car::get_Make

  .method public hidebysig specialname instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) 
          set_Make(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string FunWithRecords.Car::'<Make>k__BackingField'
    IL_0007:  ret
  } // end of method Car::set_Make

  .method public hidebysig specialname instance string 
          get_Model() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string FunWithRecords.Car::'<Model>k__BackingField'
    IL_0006:  ret
  } // end of method Car::get_Model

  .method public hidebysig specialname instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) 
          set_Model(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string FunWithRecords.Car::'<Model>k__BackingField'
    IL_0007:  ret
  } // end of method Car::set_Model

  .method public hidebysig specialname instance string 
          get_Color() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string FunWithRecords.Car::'<Color>k__BackingField'
    IL_0006:  ret
  } // end of method Car::get_Color

  .method public hidebysig specialname instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) 
          set_Color(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string FunWithRecords.Car::'<Color>k__BackingField'
    IL_0007:  ret
  } // end of method Car::set_Color

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ret
  } // end of method Car::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string make,
                               string model,
                               string color) cil managed
  {
    // Code size       33 (0x21)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  call       instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) FunWithRecords.Car::set_Make(string)
    IL_000f:  nop
    IL_0010:  ldarg.0
    IL_0011:  ldarg.2
    IL_0012:  call       instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) FunWithRecords.Car::set_Model(string)
    IL_0017:  nop
    IL_0018:  ldarg.0
    IL_0019:  ldarg.3
    IL_001a:  call       instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) FunWithRecords.Car::set_Color(string)
    IL_001f:  nop
    IL_0020:  ret
  } // end of method Car::.ctor

  .property instance callconv(8) string Make()
  {
    .get instance string FunWithRecords.Car::get_Make()
    .set instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) FunWithRecords.Car::set_Make(string)
  } // end of property Car::Make
  .property instance callconv(8) string Model()
  {
    .get instance string FunWithRecords.Car::get_Model()
    .set instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) FunWithRecords.Car::set_Model(string)
  } // end of property Car::Model
  .property instance callconv(8) string Color()
  {
    .get instance string FunWithRecords.Car::get_Color()
    .set instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) FunWithRecords.Car::set_Color(string)
  } // end of property Car::Color
} // end of class FunWithRecords.Car

.class private auto ansi beforefieldinit FunWithRecords.CarRecord
       extends [System.Runtime]System.Object
       implements class [System.Runtime]System.IEquatable`1<class FunWithRecords.CarRecord>
{
  .field private initonly string '<Make>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private initonly string '<Model>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private initonly string '<Color>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string Make,
                               string Model,
                               string Color) cil managed
  {
    // Code size       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string FunWithRecords.CarRecord::'<Make>k__BackingField'
    IL_0007:  ldarg.0
    IL_0008:  ldarg.2
    IL_0009:  stfld      string FunWithRecords.CarRecord::'<Model>k__BackingField'
    IL_000e:  ldarg.0
    IL_000f:  ldarg.3
    IL_0010:  stfld      string FunWithRecords.CarRecord::'<Color>k__BackingField'
    IL_0015:  ldarg.0
    IL_0016:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_001b:  nop
    IL_001c:  ret
  } // end of method CarRecord::.ctor

  .method family hidebysig newslot specialname virtual 
          instance class [System.Runtime]System.Type 
          get_EqualityContract() cil managed
  {
    .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       11 (0xb)
    .maxstack  8
    IL_0000:  ldtoken    FunWithRecords.CarRecord
    IL_0005:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_000a:  ret
  } // end of method CarRecord::get_EqualityContract

  .method public hidebysig specialname instance string 
          get_Make() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string FunWithRecords.CarRecord::'<Make>k__BackingField'
    IL_0006:  ret
  } // end of method CarRecord::get_Make

  .method public hidebysig specialname instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) 
          set_Make(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string FunWithRecords.CarRecord::'<Make>k__BackingField'
    IL_0007:  ret
  } // end of method CarRecord::set_Make

  .method public hidebysig specialname instance string 
          get_Model() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string FunWithRecords.CarRecord::'<Model>k__BackingField'
    IL_0006:  ret
  } // end of method CarRecord::get_Model

  .method public hidebysig specialname instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) 
          set_Model(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string FunWithRecords.CarRecord::'<Model>k__BackingField'
    IL_0007:  ret
  } // end of method CarRecord::set_Model

  .method public hidebysig specialname instance string 
          get_Color() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string FunWithRecords.CarRecord::'<Color>k__BackingField'
    IL_0006:  ret
  } // end of method CarRecord::get_Color

  .method public hidebysig specialname instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) 
          set_Color(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string FunWithRecords.CarRecord::'<Color>k__BackingField'
    IL_0007:  ret
  } // end of method CarRecord::set_Color

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    // Code size       70 (0x46)
    .maxstack  2
    .locals init (class [System.Runtime]System.Text.StringBuilder V_0)
    IL_0000:  newobj     instance void [System.Runtime]System.Text.StringBuilder::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldstr      "CarRecord"
    IL_000c:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_0011:  pop
    IL_0012:  ldloc.0
    IL_0013:  ldstr      " { "
    IL_0018:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_001d:  pop
    IL_001e:  ldarg.0
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance bool FunWithRecords.CarRecord::PrintMembers(class [System.Runtime]System.Text.StringBuilder)
    IL_0025:  brfalse.s  IL_0033

    IL_0027:  ldloc.0
    IL_0028:  ldstr      " "
    IL_002d:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_0032:  pop
    IL_0033:  ldloc.0
    IL_0034:  ldstr      "}"
    IL_0039:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_003e:  pop
    IL_003f:  ldloc.0
    IL_0040:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0045:  ret
  } // end of method CarRecord::ToString

  .method family hidebysig newslot virtual 
          instance bool  PrintMembers(class [System.Runtime]System.Text.StringBuilder builder) cil managed
  {
    .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
    // Code size       137 (0x89)
    .maxstack  2
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "Make"
    IL_0006:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_000b:  pop
    IL_000c:  ldarg.1
    IL_000d:  ldstr      " = "
    IL_0012:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_0017:  pop
    IL_0018:  ldarg.1
    IL_0019:  ldarg.0
    IL_001a:  call       instance string FunWithRecords.CarRecord::get_Make()
    IL_001f:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(object)
    IL_0024:  pop
    IL_0025:  ldarg.1
    IL_0026:  ldstr      ", "
    IL_002b:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_0030:  pop
    IL_0031:  ldarg.1
    IL_0032:  ldstr      "Model"
    IL_0037:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_003c:  pop
    IL_003d:  ldarg.1
    IL_003e:  ldstr      " = "
    IL_0043:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_0048:  pop
    IL_0049:  ldarg.1
    IL_004a:  ldarg.0
    IL_004b:  call       instance string FunWithRecords.CarRecord::get_Model()
    IL_0050:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(object)
    IL_0055:  pop
    IL_0056:  ldarg.1
    IL_0057:  ldstr      ", "
    IL_005c:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_0061:  pop
    IL_0062:  ldarg.1
    IL_0063:  ldstr      "Color"
    IL_0068:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_006d:  pop
    IL_006e:  ldarg.1
    IL_006f:  ldstr      " = "
    IL_0074:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_0079:  pop
    IL_007a:  ldarg.1
    IL_007b:  ldarg.0
    IL_007c:  call       instance string FunWithRecords.CarRecord::get_Color()
    IL_0081:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(object)
    IL_0086:  pop
    IL_0087:  ldc.i4.1
    IL_0088:  ret
  } // end of method CarRecord::PrintMembers

  .method public hidebysig specialname static 
          bool  op_Inequality(class FunWithRecords.CarRecord r1,
                              class FunWithRecords.CarRecord r2) cil managed
  {
    .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 02 00 00 ) 
    // Code size       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       bool FunWithRecords.CarRecord::op_Equality(class FunWithRecords.CarRecord,
                                                                    class FunWithRecords.CarRecord)
    IL_0007:  ldc.i4.0
    IL_0008:  ceq
    IL_000a:  ret
  } // end of method CarRecord::op_Inequality

  .method public hidebysig specialname static 
          bool  op_Equality(class FunWithRecords.CarRecord r1,
                            class FunWithRecords.CarRecord r2) cil managed
  {
    .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 02 00 00 ) 
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  beq.s      IL_0013

    IL_0004:  ldarg.0
    IL_0005:  brfalse.s  IL_0010

    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  callvirt   instance bool FunWithRecords.CarRecord::Equals(class FunWithRecords.CarRecord)
    IL_000e:  br.s       IL_0011

    IL_0010:  ldc.i4.0
    IL_0011:  br.s       IL_0014

    IL_0013:  ldc.i4.1
    IL_0014:  ret
  } // end of method CarRecord::op_Equality

  .method public hidebysig virtual instance int32 
          GetHashCode() cil managed
  {
    // Code size       86 (0x56)
    .maxstack  3
    IL_0000:  call       class [System.Collections]System.Collections.Generic.EqualityComparer`1<!0> class [System.Collections]System.Collections.Generic.EqualityComparer`1<class [System.Runtime]System.Type>::get_Default()
    IL_0005:  ldarg.0
    IL_0006:  callvirt   instance class [System.Runtime]System.Type FunWithRecords.CarRecord::get_EqualityContract()
    IL_000b:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.EqualityComparer`1<class [System.Runtime]System.Type>::GetHashCode(!0)
    IL_0010:  ldc.i4     0xa5555529
    IL_0015:  mul
    IL_0016:  call       class [System.Collections]System.Collections.Generic.EqualityComparer`1<!0> class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::get_Default()
    IL_001b:  ldarg.0
    IL_001c:  ldfld      string FunWithRecords.CarRecord::'<Make>k__BackingField'
    IL_0021:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::GetHashCode(!0)
    IL_0026:  add
    IL_0027:  ldc.i4     0xa5555529
    IL_002c:  mul
    IL_002d:  call       class [System.Collections]System.Collections.Generic.EqualityComparer`1<!0> class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::get_Default()
    IL_0032:  ldarg.0
    IL_0033:  ldfld      string FunWithRecords.CarRecord::'<Model>k__BackingField'
    IL_0038:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::GetHashCode(!0)
    IL_003d:  add
    IL_003e:  ldc.i4     0xa5555529
    IL_0043:  mul
    IL_0044:  call       class [System.Collections]System.Collections.Generic.EqualityComparer`1<!0> class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::get_Default()
    IL_0049:  ldarg.0
    IL_004a:  ldfld      string FunWithRecords.CarRecord::'<Color>k__BackingField'
    IL_004f:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::GetHashCode(!0)
    IL_0054:  add
    IL_0055:  ret
  } // end of method CarRecord::GetHashCode

  .method public hidebysig virtual instance bool 
          Equals(object obj) cil managed
  {
    .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 02 00 00 ) 
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  isinst     FunWithRecords.CarRecord
    IL_0007:  callvirt   instance bool FunWithRecords.CarRecord::Equals(class FunWithRecords.CarRecord)
    IL_000c:  ret
  } // end of method CarRecord::Equals

  .method public hidebysig newslot virtual 
          instance bool  Equals(class FunWithRecords.CarRecord other) cil managed
  {
    .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 02 00 00 ) 
    // Code size       96 (0x60)
    .maxstack  3
    IL_0000:  ldarg.1
    IL_0001:  brfalse.s  IL_005e

    IL_0003:  ldarg.0
    IL_0004:  callvirt   instance class [System.Runtime]System.Type FunWithRecords.CarRecord::get_EqualityContract()
    IL_0009:  ldarg.1
    IL_000a:  callvirt   instance class [System.Runtime]System.Type FunWithRecords.CarRecord::get_EqualityContract()
    IL_000f:  call       bool [System.Runtime]System.Type::op_Equality(class [System.Runtime]System.Type,
                                                                       class [System.Runtime]System.Type)
    IL_0014:  brfalse.s  IL_005e

    IL_0016:  call       class [System.Collections]System.Collections.Generic.EqualityComparer`1<!0> class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::get_Default()
    IL_001b:  ldarg.0
    IL_001c:  ldfld      string FunWithRecords.CarRecord::'<Make>k__BackingField'
    IL_0021:  ldarg.1
    IL_0022:  ldfld      string FunWithRecords.CarRecord::'<Make>k__BackingField'
    IL_0027:  callvirt   instance bool class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::Equals(!0,
                                                                                                                               !0)
    IL_002c:  brfalse.s  IL_005e

    IL_002e:  call       class [System.Collections]System.Collections.Generic.EqualityComparer`1<!0> class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::get_Default()
    IL_0033:  ldarg.0
    IL_0034:  ldfld      string FunWithRecords.CarRecord::'<Model>k__BackingField'
    IL_0039:  ldarg.1
    IL_003a:  ldfld      string FunWithRecords.CarRecord::'<Model>k__BackingField'
    IL_003f:  callvirt   instance bool class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::Equals(!0,
                                                                                                                               !0)
    IL_0044:  brfalse.s  IL_005e

    IL_0046:  call       class [System.Collections]System.Collections.Generic.EqualityComparer`1<!0> class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::get_Default()
    IL_004b:  ldarg.0
    IL_004c:  ldfld      string FunWithRecords.CarRecord::'<Color>k__BackingField'
    IL_0051:  ldarg.1
    IL_0052:  ldfld      string FunWithRecords.CarRecord::'<Color>k__BackingField'
    IL_0057:  callvirt   instance bool class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::Equals(!0,
                                                                                                                               !0)
    IL_005c:  br.s       IL_005f

    IL_005e:  ldc.i4.0
    IL_005f:  ret
  } // end of method CarRecord::Equals

  .method public hidebysig newslot virtual 
          instance class FunWithRecords.CarRecord 
          '<Clone>$'() cil managed
  {
    .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void FunWithRecords.CarRecord::.ctor(class FunWithRecords.CarRecord)
    IL_0006:  ret
  } // end of method CarRecord::'<Clone>$'

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor(class FunWithRecords.CarRecord original) cil managed
  {
    .param [1]
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
    // Code size       44 (0x2c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  ldfld      string FunWithRecords.CarRecord::'<Make>k__BackingField'
    IL_000e:  stfld      string FunWithRecords.CarRecord::'<Make>k__BackingField'
    IL_0013:  ldarg.0
    IL_0014:  ldarg.1
    IL_0015:  ldfld      string FunWithRecords.CarRecord::'<Model>k__BackingField'
    IL_001a:  stfld      string FunWithRecords.CarRecord::'<Model>k__BackingField'
    IL_001f:  ldarg.0
    IL_0020:  ldarg.1
    IL_0021:  ldfld      string FunWithRecords.CarRecord::'<Color>k__BackingField'
    IL_0026:  stfld      string FunWithRecords.CarRecord::'<Color>k__BackingField'
    IL_002b:  ret
  } // end of method CarRecord::.ctor

  .method public hidebysig instance void 
          Deconstruct([out] string& Make,
                      [out] string& Model,
                      [out] string& Color) cil managed
  {
    // Code size       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  call       instance string FunWithRecords.CarRecord::get_Make()
    IL_0007:  stind.ref
    IL_0008:  ldarg.2
    IL_0009:  ldarg.0
    IL_000a:  call       instance string FunWithRecords.CarRecord::get_Model()
    IL_000f:  stind.ref
    IL_0010:  ldarg.3
    IL_0011:  ldarg.0
    IL_0012:  call       instance string FunWithRecords.CarRecord::get_Color()
    IL_0017:  stind.ref
    IL_0018:  ret
  } // end of method CarRecord::Deconstruct

  .property instance callconv(8) class [System.Runtime]System.Type
          EqualityContract()
  {
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
    .get instance class [System.Runtime]System.Type FunWithRecords.CarRecord::get_EqualityContract()
  } // end of property CarRecord::EqualityContract
  .property instance callconv(8) string Make()
  {
    .get instance string FunWithRecords.CarRecord::get_Make()
    .set instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) FunWithRecords.CarRecord::set_Make(string)
  } // end of property CarRecord::Make
  .property instance callconv(8) string Model()
  {
    .get instance string FunWithRecords.CarRecord::get_Model()
    .set instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) FunWithRecords.CarRecord::set_Model(string)
  } // end of property CarRecord::Model
  .property instance callconv(8) string Color()
  {
    .get instance string FunWithRecords.CarRecord::get_Color()
    .set instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) FunWithRecords.CarRecord::set_Color(string)
  } // end of property CarRecord::Color
} // end of class FunWithRecords.CarRecord


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file .\ILOutput\records.all.res
