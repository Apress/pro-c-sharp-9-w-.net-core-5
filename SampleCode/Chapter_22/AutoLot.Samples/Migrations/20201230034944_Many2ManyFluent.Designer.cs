﻿// <auto-generated />
using System;
using AutoLot.Samples;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

namespace AutoLot.Samples.Migrations
{
    [DbContext(typeof(ApplicationDbContext))]
    [Migration("20201230034944_Many2ManyFluent")]
    partial class Many2ManyFluent
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .UseIdentityColumns()
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("ProductVersion", "5.0.1");

            modelBuilder.Entity("AutoLot.Samples.Models.Car", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<string>("Color")
                        .IsRequired()
                        .HasMaxLength(50)
                        .HasColumnType("nvarchar(50)");

                    b.Property<DateTime>("DateBuilt")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("datetime2")
                        .HasDefaultValueSql("getdate()");

                    b.Property<string>("DisplayName")
                        .ValueGeneratedOnAddOrUpdate()
                        .HasColumnType("nvarchar(max)")
                        .HasComputedColumnSql("[PetName] + ' (' + [Color] + ')'");

                    b.Property<bool>("IsDriveable")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("bit")
                        .HasDefaultValue(true);

                    b.Property<int>("MakeId")
                        .HasColumnType("int");

                    b.Property<string>("PetName")
                        .IsRequired()
                        .HasMaxLength(50)
                        .HasColumnType("nvarchar(50)");

                    b.Property<byte[]>("TimeStamp")
                        .IsConcurrencyToken()
                        .ValueGeneratedOnAddOrUpdate()
                        .HasColumnType("rowversion");

                    b.HasKey("Id");

                    b.HasIndex(new[] { "MakeId" }, "IX_Inventory_MakeId");

                    b.ToTable("Inventory", "dbo");
                });

            modelBuilder.Entity("AutoLot.Samples.Models.Driver", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<string>("FirstName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("LastName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<byte[]>("TimeStamp")
                        .IsConcurrencyToken()
                        .ValueGeneratedOnAddOrUpdate()
                        .HasColumnType("rowversion");

                    b.HasKey("Id");

                    b.ToTable("Drivers");
                });

            modelBuilder.Entity("AutoLot.Samples.Models.Make", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(max)");

                    b.Property<byte[]>("TimeStamp")
                        .IsConcurrencyToken()
                        .ValueGeneratedOnAddOrUpdate()
                        .HasColumnType("rowversion");

                    b.HasKey("Id");

                    b.ToTable("Makes");
                });

            modelBuilder.Entity("AutoLot.Samples.Models.Radio", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .UseIdentityColumn();

                    b.Property<int>("CarId")
                        .HasColumnType("int");

                    b.Property<bool>("HasSubWoofers")
                        .HasColumnType("bit");

                    b.Property<bool>("HasTweeters")
                        .HasColumnType("bit");

                    b.Property<string>("RadioId")
                        .HasColumnType("nvarchar(max)");

                    b.Property<byte[]>("TimeStamp")
                        .IsConcurrencyToken()
                        .ValueGeneratedOnAddOrUpdate()
                        .HasColumnType("rowversion");

                    b.HasKey("Id");

                    b.HasIndex(new[] { "CarId" }, "IX_Radios_CarId")
                        .IsUnique();

                    b.ToTable("Radios");
                });

            modelBuilder.Entity("CarDriver", b =>
                {
                    b.Property<int>("CarId")
                        .HasColumnType("int");

                    b.Property<int>("DriverId")
                        .HasColumnType("int");

                    b.HasKey("CarId", "DriverId");

                    b.HasIndex("DriverId");

                    b.ToTable("CarDriver");
                });

            modelBuilder.Entity("AutoLot.Samples.Models.Car", b =>
                {
                    b.HasOne("AutoLot.Samples.Models.Make", "MakeNavigation")
                        .WithMany("Cars")
                        .HasForeignKey("MakeId")
                        .HasConstraintName("FK_Make_Inventory")
                        .IsRequired();

                    b.Navigation("MakeNavigation");
                });

            modelBuilder.Entity("AutoLot.Samples.Models.Radio", b =>
                {
                    b.HasOne("AutoLot.Samples.Models.Car", "CarNavigation")
                        .WithOne("RadioNavigation")
                        .HasForeignKey("AutoLot.Samples.Models.Radio", "CarId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("CarNavigation");
                });

            modelBuilder.Entity("CarDriver", b =>
                {
                    b.HasOne("AutoLot.Samples.Models.Car", null)
                        .WithMany()
                        .HasForeignKey("CarId")
                        .HasConstraintName("FK_CarDriver_Cars_CarId")
                        .OnDelete(DeleteBehavior.ClientCascade)
                        .IsRequired();

                    b.HasOne("AutoLot.Samples.Models.Driver", null)
                        .WithMany()
                        .HasForeignKey("DriverId")
                        .HasConstraintName("FK_CarDriver_Drivers_DrvierId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("AutoLot.Samples.Models.Car", b =>
                {
                    b.Navigation("RadioNavigation");
                });

            modelBuilder.Entity("AutoLot.Samples.Models.Make", b =>
                {
                    b.Navigation("Cars");
                });
#pragma warning restore 612, 618
        }
    }
}
