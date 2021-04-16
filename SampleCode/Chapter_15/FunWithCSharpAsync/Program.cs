using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

Console.WriteLine(" Fun With Async ===>");
//Console.WriteLine(DoWork());
string message = await DoWorkAsync();
Console.WriteLine(message);

Console.WriteLine(message);

string message1 = await DoWorkAsync().ConfigureAwait(false);
Console.WriteLine(message1);

 await MethodReturningTaskOfVoidAsync();
MethodReturningVoidAsync();
// //await MultipleAwaits();
// MultipleAwaits().GetAwaiter().GetResult();
// Console.WriteLine(await ReturnAnInt());
// await MethodWithProblems(7, -5);
// await MethodWithProblemsFixed(7, -5);
// await foreach (var number in GenerateSequence())
// {
//     Console.WriteLine(number);
// }
Console.WriteLine("Completed");
Console.ReadLine();

static string DoWork()
{
    Thread.Sleep(5_000);
    return "Done with work!";
}

static async Task<string> DoWorkAsync()
{
    return await Task.Run(() =>
    {
        Thread.Sleep(5_000);
        return "Done with work!";
    });
}

static async Task MethodReturningTaskOfVoidAsync()
{
    await Task.Run(() =>
    {
        /* Do some work here... */
        Thread.Sleep(4_000);
    });
    Console.WriteLine("Void method completed");
}

static async void MethodReturningVoidAsync()
{
    await Task.Run(() =>
    {
                /* Do some work here... */
        Thread.Sleep(4_000);
    });
    Console.WriteLine("Fire and forget void method completed");
}

static async Task MultipleAwaits()
{
    //await Task.Run(() => { Thread.Sleep(2_000); });
    //Console.WriteLine("Done with first task!");

    //await Task.Run(() => { Thread.Sleep(2_000); });
    //Console.WriteLine("Done with second task!");

    //await Task.Run(() => { Thread.Sleep(2_000); });
    //Console.WriteLine("Done with third task!");

    var task1 = Task.Run(() =>
    {
        Thread.Sleep(2_000);
        Console.WriteLine("Done with first task!");
    });

    var task2 = Task.Run(() =>
      {
          Thread.Sleep(1_000);
          Console.WriteLine("Done with second task!");
      });

    var task3 = Task.Run(() =>
    {
        Thread.Sleep(1_000);
        Console.WriteLine("Done with third task!");
    });
    await Task.WhenAny(task1, task2, task3);
    //await Task.WhenAll(task1,task2,task3);
}

static async Task<string> MethodWithTryCatch()
{
    try
    {
        //Do some work
        return "Hello";
    }
    catch (Exception ex)
    {
        await LogTheErrors();
        throw;
    }
    finally
    {
        await DoMagicCleanUp();
    }
}

static Task DoMagicCleanUp()
{
    throw new NotImplementedException();
}

static Task LogTheErrors()
{
    throw new NotImplementedException();
}

static async ValueTask<int> ReturnAnInt()
{
    await Task.Delay(1_000);
    return 5;
}

static async Task MethodWithProblems(int firstParam, int secondParam)
{
    Console.WriteLine("Enter");
    await Task.Run(() =>
    {
                //Call long running method
                Thread.Sleep(4_000);
        Console.WriteLine("First Complete");
                //Call another long running method that fails because
                //the second parameter is out of range
                Console.WriteLine("Something bad happened");
    });
}

static async Task MethodWithProblemsFixed(int firstParam, int secondParam)
{
    Console.WriteLine("Enter");
    if (secondParam < 0)
    {
        Console.WriteLine("Bad data");
        return;
    }

    await actualImplementation();

    async Task actualImplementation()
    {
        await Task.Run(() =>
        {
                    //Call long running method
                    Thread.Sleep(4_000);
            Console.WriteLine("First Complete");
                    //Call another long running method that fails because
                    //the second parameter is out of range
                    Console.WriteLine("Something bad happened");
        });
    }
}

static async IAsyncEnumerable<int> GenerateSequence()
{
    for (int i = 0; i < 20; i++)
    {
        await Task.Delay(100);
        yield return i;
    }
}
