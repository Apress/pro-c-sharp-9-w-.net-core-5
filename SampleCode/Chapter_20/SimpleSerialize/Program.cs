using System;
using System.Collections.Generic;
using System.IO;
using System.Text.Json;
using System.Text.Json.Serialization;
using System.Xml;
using System.Xml.Serialization;
using SimpleSerialize;

Console.WriteLine("***** Fun with Object Serialization *****\n");

// Make a JamesBondCar and set state.
JamesBondCar jbc = new()
{
    CanFly = true,
    CanSubmerge = false,
    TheRadio = new()
    {
        StationPresets = new() { 89.3, 105.1, 97.1 },
        HasTweeters = true
    }
};

Person p = new Person
{
    FirstName = "James",
    IsAlive = true
};
// XML
SaveAsXmlFormat(jbc, "CarData.xml");
Console.WriteLine("=> Saved car in XML format!");

SaveAsXmlFormat(p, "PersonData.xml");
Console.WriteLine("=> Saved person in XML format!");

SaveListOfCarsAsXml("CarCollection.xml");
Console.WriteLine("=> Saved person in XML format!");

JamesBondCar savedCar = ReadAsXmlFormat<JamesBondCar>("CarData.xml");
Console.WriteLine("Original Car: {0}", savedCar.ToString());
Console.WriteLine("Read Car: {0}", savedCar.ToString());

List<JamesBondCar> savedCars = ReadAsXmlFormat<List<JamesBondCar>>("CarCollection.xml");

foreach (var c in savedCars)
{
    System.Console.WriteLine(c.ToString());
}
// JSON
JsonSerializerOptions options = new()
{
    PropertyNameCaseInsensitive = true,
    PropertyNamingPolicy = JsonNamingPolicy.CamelCase,
    IncludeFields = true,
    WriteIndented = true,
    NumberHandling = JsonNumberHandling.AllowReadingFromString | JsonNumberHandling.WriteAsString
};
// JsonSerializerOptions options = new (JsonSerializerDefaults.Web)
// {
//     IncludeFields = true,
//     WriteIndented = true,
// };

SaveAsJsonFormat(options, jbc, "CarData.json");
Console.WriteLine("=> Saved car in JSON format!");

SaveAsJsonFormat(options, p, "PersonData.json");
Console.WriteLine("=> Saved person in JSON format!");

SaveListOfCarsAsJson(options, "CarCollection.json");

JamesBondCar savedJsonCar = ReadAsJsonFormat<JamesBondCar>(options, "CarData.json");
Console.WriteLine("Read Car: {0}", savedJsonCar.ToString());

List<JamesBondCar> savedJsonCars = ReadAsJsonFormat<List<JamesBondCar>>(options, "CarCollection.json");
Console.WriteLine("Read Car: {0}", savedJsonCar.ToString());


Console.ReadLine();

static void SaveAsXmlFormat<T>(T objGraph, string fileName)
{
    // Create a typed instance of the XmlSerializer
    XmlSerializer xmlFormat = new XmlSerializer(typeof(T));

    using (Stream fStream = new FileStream(fileName,
      FileMode.Create, FileAccess.Write, FileShare.None))
    {
        xmlFormat.Serialize(fStream, objGraph);
    }
}

static void SaveListOfCarsAsXml(string fileName)
{
    //Now persist a List<T> of JamesBondCars.
    List<JamesBondCar> myCars = new()
    {
        new JamesBondCar { CanFly = true, CanSubmerge = true },
        new JamesBondCar { CanFly = true, CanSubmerge = false },
        new JamesBondCar { CanFly = false, CanSubmerge = true },
        new JamesBondCar { CanFly = false, CanSubmerge = false },
    };

    using (Stream fStream = new FileStream(fileName,
      FileMode.Create, FileAccess.Write, FileShare.None))
    {
        XmlSerializer xmlFormat = new XmlSerializer(typeof(List<JamesBondCar>));
        xmlFormat.Serialize(fStream, myCars);
    }
    Console.WriteLine("=> Saved list of cars!");
}

static T ReadAsXmlFormat<T>(string fileName)
{
    // Save object to a file in XML format.
    XmlSerializer xmlFormat = new XmlSerializer(typeof(T));

    using (Stream fStream = new FileStream(fileName, FileMode.Open))
    {
        T obj = default;
        obj = (T)xmlFormat.Deserialize(fStream);
        return obj;
    }
}

static void SaveAsJsonFormat<T>(JsonSerializerOptions options, T objGraph, string fileName) 
=> File.WriteAllText(fileName, System.Text.Json.JsonSerializer.Serialize(objGraph, options));

static void SaveListOfCarsAsJson(JsonSerializerOptions options, string fileName)
{
    //Now persist a List<T> of JamesBondCars.
    List<JamesBondCar> myCars = new()
    {
        new JamesBondCar { CanFly = true, CanSubmerge = true },
        new JamesBondCar { CanFly = true, CanSubmerge = false },
        new JamesBondCar { CanFly = false, CanSubmerge = true },
        new JamesBondCar { CanFly = false, CanSubmerge = false },
    };

    File.WriteAllText(fileName, System.Text.Json.JsonSerializer.Serialize(myCars, options));
    Console.WriteLine("=> Saved list of cars!");
}

static T ReadAsJsonFormat<T>(JsonSerializerOptions options, string fileName) 
=> System.Text.Json.JsonSerializer.Deserialize<T>(File.ReadAllText(fileName), options);


