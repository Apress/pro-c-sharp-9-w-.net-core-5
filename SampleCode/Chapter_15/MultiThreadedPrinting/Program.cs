using System;
using System.Threading;
using MultiThreadedPrinting;

Console.WriteLine("*****Synchronizing Threads *****\n");

Printer p = new Printer();

// Make 10 threads that are all pointing to the same
// method on the same object.
Thread[] threads = new Thread[10];
for (int i = 0; i < 10; i++)
{
    threads[i] = new Thread(new ThreadStart(p.PrintNumbers))
    {
        Name = $"Worker thread #{i}"
    };
}

// Now start each one.
foreach (Thread t in threads)
{
    t.Start();
}

System.Console.WriteLine("Using Interlocked");
int intVal = 5;
object myLockToken = new();
lock(myLockToken)
  {
    intVal++;
  }
System.Console.WriteLine(intVal);
Interlocked.Increment(ref intVal);
System.Console.WriteLine(intVal);

Console.ReadLine();
