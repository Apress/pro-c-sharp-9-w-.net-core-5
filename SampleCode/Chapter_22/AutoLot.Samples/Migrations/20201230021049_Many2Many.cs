using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace AutoLot.Samples.Migrations
{
    public partial class Many2Many : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Radio_Cars_CarId",
                table: "Radio");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Radio",
                table: "Radio");

            migrationBuilder.RenameTable(
                name: "Radio",
                newName: "Radios");

            migrationBuilder.RenameIndex(
                name: "IX_Radio_CarId",
                table: "Radios",
                newName: "IX_Radios_CarId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Radios",
                table: "Radios",
                column: "Id");

            migrationBuilder.CreateTable(
                name: "Drivers",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    FirstName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    LastName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    TimeStamp = table.Column<byte[]>(type: "varbinary(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Drivers", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "CarDriver",
                columns: table => new
                {
                    CarsId = table.Column<int>(type: "int", nullable: false),
                    DriversId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CarDriver", x => new { x.CarsId, x.DriversId });
                    table.ForeignKey(
                        name: "FK_CarDriver_Cars_CarsId",
                        column: x => x.CarsId,
                        principalTable: "Cars",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_CarDriver_Drivers_DriversId",
                        column: x => x.DriversId,
                        principalTable: "Drivers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_CarDriver_DriversId",
                table: "CarDriver",
                column: "DriversId");

            migrationBuilder.AddForeignKey(
                name: "FK_Radios_Cars_CarId",
                table: "Radios",
                column: "CarId",
                principalTable: "Cars",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Radios_Cars_CarId",
                table: "Radios");

            migrationBuilder.DropTable(
                name: "CarDriver");

            migrationBuilder.DropTable(
                name: "Drivers");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Radios",
                table: "Radios");

            migrationBuilder.RenameTable(
                name: "Radios",
                newName: "Radio");

            migrationBuilder.RenameIndex(
                name: "IX_Radios_CarId",
                table: "Radio",
                newName: "IX_Radio_CarId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Radio",
                table: "Radio",
                column: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_Radio_Cars_CarId",
                table: "Radio",
                column: "CarId",
                principalTable: "Cars",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
