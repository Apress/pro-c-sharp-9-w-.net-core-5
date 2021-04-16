using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.SqlServer.Query.Internal;

#nullable disable

namespace AutoLot.Samples.Models
{
    [Table("Inventory", Schema = "dbo")]
    [Index(nameof(MakeId), Name = "IX_Inventory_MakeId")]
    public class Car : BaseEntity
    {
        private bool? _isDriveable;

        public bool IsDriveable
        {
            get => _isDriveable ?? true;
            set => _isDriveable = value;
        }

        public string DisplayName { get; set; }
        public DateTime DateBuilt { get; set; }
        [Required, StringLength(50)]
        public string Color { get; set; }
        [Required, StringLength(50)]
        public string PetName { get; set; }
        public int MakeId { get; set; }
        [ForeignKey(nameof(MakeId))]
        public Make MakeNavigation { get; set; }
        public Radio RadioNavigation { get; set; }
        [InverseProperty(nameof(Driver.Cars))]
        public IEnumerable<Driver> Drivers { get; set; } = new List<Driver>();
    }

}
