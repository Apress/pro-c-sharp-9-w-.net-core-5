# Errata for *Pro C# 9 with .NET 5*

On **page 105** [code error]:
 
In ExecutePatternMatchingSwitch:
2.5 should read 2.5M   —  This is required for consistency with the coding error.
```c#
  case "3":
      choice = 2.5M;
      break;
```

***
On **page 302** [comment error]:
 
The comment should read"
```c#
// a read-only property in an interface would be:
byte Points { get; }
```
***

On **page 439** [wrong data type]:
 
On page 439, second paragraph, second sentence whould read:

Using this implementation of GetHashCode(), two anonymous types will yield the same hash value if 
they have the same set of properties that have been assigned the same values.

***

On **page 524** [wrong data type]:
 
On page 524, second paragraph, first sentence whould read:

The return value of the Where() method is hidden from view in this code example, but under the covers
you are operating on an **Enumerable** type.

***

On **page 525** [missing return]:
 
On page 525 line 5 from top there is a return missing after the colon. The following is incorrect:

QueryStringsWithAnonymousMethods() helper function, shown here:static void
QueryStringsWithAnonymousMethods()
{

The correction is as follows:

QueryStringsWithAnonymousMethods() helper function, shown here:
static void QueryStringsWithAnonymousMethods()
{

There is a similar issue on 540 at the start of the code sample in section Leveraging OS Verbs with ProcessStartInfo

***
On **page 584** [incorrect sentence]:
 
On page 584 in the final paragraph before the next section, the following sentence should be removed:

If you were to run this version of the application, you would find that the
Completed message shows before the Done with work! message.

Code was refactored between editions and that sentence should have been removed.

***
