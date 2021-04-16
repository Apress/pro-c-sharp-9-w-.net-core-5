using System;
using System.Text.Json.Serialization;
using System.Xml;
using System.Xml.Serialization;

namespace SimpleSerialize
{
    public class Person
    {
        // A public field.
        //[JsonInclude]
        public bool IsAlive = true;

        // A private field.
        private int PersonAge = 21;

        // Public property/private data.
        private string _fName = string.Empty;
        public string FirstName
        {
            get { return _fName; }
            set { _fName = value; }
        }
        public override string ToString() => $"IsAlive:{IsAlive} FirstName:{FirstName} Age:{PersonAge} ";
    }
}
