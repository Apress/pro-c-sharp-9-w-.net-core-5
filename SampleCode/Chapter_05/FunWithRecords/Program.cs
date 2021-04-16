using System;
using FunWithRecords;

Console.WriteLine("Fun with Records!");

Console.WriteLine("/*************** Classes *********************/");

//Use object initialization
Car myCar = new Car
{
    Make = "Honda",
    Model = "Pilot",
    Color = "Blue"
};
Console.WriteLine("My car: ");
DisplayCarStats(myCar);
Console.WriteLine();

//Use the custom constructor
Car anotherMyCar = new Car("Honda", "Pilot", "Blue");
Console.WriteLine("Another variable for my car: ");
DisplayCarStats(anotherMyCar);
Console.WriteLine();

//Compile error if property is changed
//myCar.Color = "Red";

Console.WriteLine($"Cars are the same? {myCar.Equals(anotherMyCar)}");
Console.WriteLine($"Cars are the same reference? {ReferenceEquals(myCar, anotherMyCar)}");

Console.WriteLine("/*************** RECORDS *********************/");
//Use object initialization
CarRecord myCarRecord = new CarRecord("Honda", "Pilot", "Blue");
// CarRecord myCarRecord = new CarRecord
// {
//     Make = "Honda",
//     Model = "Pilot",
//     Color = "Blue"
// };
Console.WriteLine("My car: ");
Console.WriteLine(myCarRecord.ToString());
// Console.WriteLine();

//Use the custom constructor
CarRecord anotherMyCarRecord = new CarRecord("Honda", "Pilot", "Blue");
Console.WriteLine("Another variable for my car: ");
Console.WriteLine(anotherMyCarRecord.ToString()); 
Console.WriteLine();

//Compile error if property is changed
//myCarRecord.Color = "Red";

Console.WriteLine($"CarRecords are the same? {myCarRecord.Equals(anotherMyCarRecord)}");
Console.WriteLine($"CarRecords are the same reference? {ReferenceEquals(myCarRecord,anotherMyCarRecord)}");
Console.WriteLine($"CarRecords are the same? {myCarRecord == anotherMyCarRecord}");
Console.WriteLine($"CarRecords are not the same? {myCarRecord != anotherMyCarRecord}");

CarRecord carRecordCopy = anotherMyCarRecord;
Console.WriteLine("Car Record copy results");
Console.WriteLine($"CarRecords are the same? {carRecordCopy.Equals(anotherMyCarRecord)}");
Console.WriteLine($"CarRecords are the same? {ReferenceEquals(carRecordCopy, anotherMyCarRecord)}");
Console.WriteLine();

CarRecord ourOtherCar = myCarRecord with {Model = "Odyssee"};
Console.WriteLine("My copied car:");
Console.WriteLine(ourOtherCar.ToString());

Console.WriteLine("Car Record copy using with expression results");
Console.WriteLine($"CarRecords are the same? {ourOtherCar.Equals(myCarRecord)}");
Console.WriteLine($"CarRecords are the same? {ReferenceEquals(ourOtherCar, myCarRecord)}");

Console.ReadLine();


static void DisplayCarStats(Car c)
{
    Console.WriteLine("Car Make: {0}", c.Make);
    Console.WriteLine("Car Model: {0}", c.Model);
    Console.WriteLine("Car Color: {0}", c.Color);
}
