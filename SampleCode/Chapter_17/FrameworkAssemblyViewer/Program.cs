using System;
using System.Linq;
using System.Reflection;

Console.WriteLine("***** The Framework Assembly Reflector App *****\n");

// Load Microsoft.EntityFrameworkCore.dll.
var displayName =
    "Microsoft.EntityFrameworkCore, Version=5.0.0.0, Culture=\"\", PublicKeyToken=adb9793829ddae60";
Assembly asm = Assembly.Load(displayName);
DisplayInfo(asm);
Console.WriteLine("Done!");
Console.ReadLine();

static void DisplayInfo(Assembly a)
{
    Console.WriteLine("***** Info about Assembly *****");
    Console.WriteLine($"Asm Name: {a.GetName().Name}");
    Console.WriteLine($"Asm Version: {a.GetName().Version}");
    Console.WriteLine($"Asm Culture: {a.GetName().CultureInfo.DisplayName}");
    Console.WriteLine("\nHere are the public enums:");

    // Use a LINQ query to find the public enums.
    Type[] types = a.GetTypes();
    var publicEnums = from pe in types
                      where pe.IsEnum &&
                            pe.IsPublic
                      select pe;

    foreach (var pe in publicEnums)
    {
        Console.WriteLine(pe);
    }
}
