using System;
using System.IO;
using Microsoft.Extensions.Configuration;

IConfiguration config = new ConfigurationBuilder()
    .SetBasePath(Directory.GetCurrentDirectory())
    .AddJsonFile("appsettings.json", true, true)
    .Build();
Console.WriteLine($"My car's name is {config["CarName"]}");
Console.ReadLine();