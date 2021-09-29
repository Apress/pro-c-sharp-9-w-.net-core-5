# Errata for *Pro C# 9 with .NET 5*

On **page 3** [wording]:  
The text:  
"but can also run (and can be developed) on ios and linux"  
should be:  
"but can also be developed on macOS and Linux and run on iOS and Linux" 
***
on **page 5** [wording]   
In note section, the text:  
"I'm not saying you should **use not** .NET 5"  
should be:  
"I'm not saying you should **not use** .NET 5"
***
On **page 60**   
Table 3-2:    
BufferHeightBufferWidth should be  
BufferHeight  
BufferWidth

and WindowHeightWindowWidthWindowTopWindowLeft should be  
WindowHeight  
WindowWidth  
WindowTop  
WindowLeft
***
On **page 105** [code error]:
 
In ExecutePatternMatchingSwitch:
2.5 should read 2.5M   —  This is required for consistency with the coding error.
```c#
  case "3":
      choice = 2.5M;
      break;
```
***
On **page 137-138** [code typo]:  
The switch statements should case using EmpTypeEnum, and not EmpType. Correct is listed here:  
```c#
static void AskForBonus(EmpTypeEnum e)
{
  switch (e)
  {
    case EmpTypeEnum.Manager:
      Console.WriteLine("How about stock options instead?");
      break;
    case EmpTypeEnum.Grunt:
      Console.WriteLine("You have got to be kidding...");
      break;
    case EmpTypeEnum.Contractor:
      Console.WriteLine("You already get enough cash...");
      break;
    case EmpTypeEnum.VicePresident:
      Console.WriteLine("VERY GOOD, Sir!");
      break;
  }
}
```
***
On **page 141** [code error]:  
The right shift example in Table 4-3 should be this:
```c#
0110 >> 1 = 0011 (3)
```
***
On **page 302** [comment error]:
 
The comment should read  
```c#
// a read-only property in an interface would be:
byte Points { get; }
```
***

On **page 439** [improved wording]:
 
On page 439, second paragraph, second sentence whould read:  

Using this implementation of GetHashCode(), two anonymous types will yield the same hash value if 
they have the same set of properties that have been assigned the same values.

***

On **page 524** [wrong data type]:
 
On page 524, second paragraph, first sentence whould read:  

The return value of the Where() method is hidden from view in this code example, but under the covers
you are operating on an **Enumerable** type.

***

On **pages 525, 540, 575, 586** [formatting issues]:
 
Page 525 line 5 from top there is a line break missing between the text and the code sample. The correction is as follows:

QueryStringsWithAnonymousMethods() helper function, shown here:  
static void QueryStringsWithAnonymousMethods()  
{  

Page 540 at the bottom of the page. There should be a line break like this:  

Create a new method with the following code:  
static void UseApplicationVerbs()  
{  
//rest omitted for brevity  

Page 757 (at the bottom of the page) should be formatted like this:  

Update the Cancel button Click event to the following code:  
private void cmdCancel_Click(object sender, EventArgs e)  
{  

Page 586 is also missing a line break. Last text bloxk in Awaitable Void Async Methods should be formatted like this:

The caller of this method would then use the await keyword as so:  
await MethodReturningVoidAsync();  
Console.WriteLine("Void method complete");  

***
On **page 584** [incorrect sentence]:
 
On page 584 in the final paragraph before the next section, the following sentence should be removed:

If you were to run this version of the application, you would find that the
Completed message shows before the Done with work! message.

Code was refactored between editions and that sentence should have been removed.

***
