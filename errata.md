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

On **page 525** [missing return]:
 
On line 5 from top there is a return missing after the colon –
“...function, shown here:static void”. It should be:

Given that C# lambda expressions are simply shorthand notations for working
with anonymous methods, consider the third query expression created within the
QueryStringsWithAnonymousMethods() helper function, shown here:
static voidQueryStringsWithAnonymousMethods()

***
