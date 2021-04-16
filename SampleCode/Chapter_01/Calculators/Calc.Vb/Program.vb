' Calc.vb
Namespace CalculatorExample
    Module Program
        ' This class contains the app's entry point.
        Sub Main(args As String())
            Dim c As New Calc
            Dim ans As Integer = c.Add(10, 84)
            Console.WriteLine("10 + 84 is {0}", ans)
            'Wait for user to press the Enter key before shutting down
            Console.ReadLine()
        End Sub

    End Module
    ' The VB.NET calculator.
    Class Calc
        Public Function Add(ByVal addend1 As Integer, ByVal addend2 As Integer) As Integer
            Return addend1 + addend2
        End Function
    End Class
End Namespace

