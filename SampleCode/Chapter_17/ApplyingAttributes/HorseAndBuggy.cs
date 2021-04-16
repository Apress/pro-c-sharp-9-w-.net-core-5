using System;
using System.Xml.Serialization;

namespace ApplyingAttributes
{
    [XmlRoot(Namespace = "http://www.MyCompany.com"), Obsolete("Use another vehicle!")]
    public class HorseAndBuggy
    {
        // ...
    }
}