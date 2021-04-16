  //This class contains the app's entry point.
      Calc c = new Calc();
      int ans = c.Add(10, 84);
      System.Console.WriteLine("10 + 84 is {0}.", ans);
      //Wait for user to press the Enter key
      System.Console.ReadLine();
  // The C# calculator.
  class Calc
  {
    public int Add(int addend1, int addend2)
    { return addend1 + addend2; }
  }


