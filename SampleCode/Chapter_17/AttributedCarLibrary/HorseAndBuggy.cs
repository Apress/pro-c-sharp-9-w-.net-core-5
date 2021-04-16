using System;
using System.Collections.Generic;
using System.Text;

namespace AttributedCarLibrary
{

    [Serializable]
    [Obsolete("Use another vehicle!")]
    [VehicleDescription("The old gray mare, she ain't what she used to be...")]
    public class HorseAndBuggy
    {
    }
}
