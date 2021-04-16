using System;
using System.Collections.Generic;
using System.Linq;

Console.WriteLine("***** Fun with LINQ to Objects *****\n");
QueryOverStrings();
QueryOverStringsWithExtensionMethods();
QueryOverStringsLongHand();
QueryOverInts();
ImmediateExecution();
Console.ReadLine();

static void QueryOverStrings()
{
    // Assume we have an array of strings.
    string[] currentVideoGames = { "Morrowind", "Uncharted 2", "Fallout 3", "Daxter", "System Shock 2" };
    // Build a query expression to find the items in the array
    // that have an embedded space.
    IEnumerable<string> subset =
        from g in currentVideoGames
        where g.Contains(" ")
        orderby g
        select g;

    ReflectOverQueryResults(subset);

    // Print out the results.
    foreach (string s in subset)
    {
        Console.WriteLine("Item: {0}", s);
    }
}

static void QueryOverStringsWithExtensionMethods()
{
    // Assume we have an array of strings.
    string[] currentVideoGames = { "Morrowind", "Uncharted 2", "Fallout 3", "Daxter", "System Shock 2" };

    // Build a query expression to find the items in the array
    // that have an embedded space.
    IEnumerable<string> subset =
        currentVideoGames
            .Where(g => g.Contains(" "))
            .OrderBy(g => g)
            .Select(g => g);
    IEnumerable<string> subset2 =
        currentVideoGames
            .Where(g => g.Contains(" "))
            .OrderBy(g => g);

    ReflectOverQueryResults(subset, "Extension Methods");
    ReflectOverQueryResults(subset2, "Extension Methods");

    // Print out the results.
    foreach (string s in subset)
    {
        Console.WriteLine("Item: {0}", s);
    }
}
static void QueryOverStringsLongHand()
{
    // Assume we have an array of strings.
    string[] currentVideoGames = { "Morrowind", "Uncharted 2", "Fallout 3", "Daxter", "System Shock 2" };

    string[] gamesWithSpaces = new string[5];

    for (int i = 0; i < currentVideoGames.Length; i++)
    {
        if (currentVideoGames[i].Contains(" "))
        {
            gamesWithSpaces[i] = currentVideoGames[i];
        }
    }

    // Now sort them.
    Array.Sort(gamesWithSpaces);

    // Print out the results.
    foreach (string s in gamesWithSpaces)
    {
        if (s != null)
        {
            Console.WriteLine("Item: {0}", s);
        }
    }
    Console.WriteLine();
}
static void ReflectOverQueryResults(object resultSet, string queryType = "Query Expressions")
{
    Console.WriteLine($"***** Info about your query using {queryType} *****");
    Console.WriteLine("resultSet is of type: {0}", resultSet.GetType().Name);
    Console.WriteLine("resultSet location: {0}", resultSet.GetType().Assembly.GetName().Name);
}

static void QueryOverInts()
{
    int[] numbers = { 10, 20, 30, 40, 1, 2, 3, 8 };

    // Print only items less than 10.
    //IEnumerable<int> subset = from i in numbers where i < 10 select i;
    var subset = from i in numbers where i < 10 select i;

    foreach (int i in subset)
    {
        Console.WriteLine("Item: {0}", i);
    }

    Console.WriteLine();
    // Change some data in the array.
    numbers[0] = 4;

    // Evaluated again!
    foreach (var j in subset)
    {
        Console.WriteLine("{0} < 10", j);
    }

    Console.WriteLine();

    ReflectOverQueryResults(subset);
    Console.WriteLine();
}

static void ImmediateExecution()
{
    Console.WriteLine();
    Console.WriteLine("Immediate Execution");
    int[] numbers = { 10, 20, 30, 40, 1, 2, 3, 8 };

    //get the first element in sequence order
    int number = (from i in numbers select i).First();
    Console.WriteLine("First is {0}", number);

    //get the first in query order
    number = (from i in numbers orderby i select i).First();
    Console.WriteLine("First is {0}", number);

    //get the one element  that matches the query
    number = (from i in numbers where i > 30 select i).Single();
    Console.WriteLine("Single is {0}", number);

    try
    {
        //Throw an exception if more than one element passes the query
        number = (from i in numbers where i > 10 select i).Single();
    }
    catch (Exception ex)
    {
        Console.WriteLine("An exception occurred: {0}", ex.Message);
    }
    // Get data RIGHT NOW as int[].
    int[] subsetAsIntArray = (from i in numbers where i < 10 select i).ToArray<int>();

    // Get data RIGHT NOW as List<int>.
    List<int> subsetAsListOfInts = (from i in numbers where i < 10 select i).ToList<int>();
}
