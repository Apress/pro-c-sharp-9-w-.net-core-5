using System.Collections.Generic;

#nullable disable

namespace AutoLot.Samples.Models
{
    public class Make : BaseEntity
    {
       public string Name { get; set; }
       public IEnumerable<Car> Cars { get; set; } = new List<Car>();
    }
}
