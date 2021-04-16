using System;
using System.Collections;
using System.Collections.Generic;
using AutoLot.Models.Entities;
using AutoLot.Models.Entities.Owned;
using AutoLot.Models.ViewModels;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Storage;
using Microsoft.EntityFrameworkCore.ChangeTracking;
using AutoLot.Dal.Exceptions;

namespace AutoLot.Dal.EfStructures
{
    public partial class ApplicationDbContext : DbContext
    {

        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
            ChangeTracker.StateChanged += ChangeTracker_StateChanged;
            ChangeTracker.Tracked += ChangeTracker_Tracked;
            base.SavingChanges += (sender, args) =>
            {
                Console.WriteLine($"Saving changes for {((ApplicationDbContext)sender)!.Database!.GetConnectionString()}");
            };

            base.SavedChanges += (sender, args) =>
            {
                Console.WriteLine($"Saved {args!.EntitiesSavedCount} changes for {((ApplicationDbContext)sender)!.Database!.GetConnectionString()}");
            };  
            base.SaveChangesFailed += (sender, args) =>
            {
                Console.WriteLine($"An exception occurred! {args.Exception.Message} entities");
            };
               
        }

        private void ChangeTracker_StateChanged(object? sender, EntityStateChangedEventArgs e)
        {
            if (e.Entry.Entity is not Car c)
            {
                return;
            }

            var action = string.Empty;
            Console.WriteLine($"Car {c.PetName} was {e.OldState} before the state changed to {e.NewState}");
            switch (e.NewState)
            {
                case EntityState.Unchanged:
                    action = e.OldState switch
                    {
                        EntityState.Added => "Added",
                        EntityState.Modified => "Edited",
                        _ => action
                    };

                    Console.WriteLine($"The object was {action}");
                    break;
            }
        }

        private void ChangeTracker_Tracked(object? sender, EntityTrackedEventArgs e)
        {
            var source = (e.FromQuery) ? "Database" : "Code";
            if (e.Entry.Entity is Car c)
            {
                Console.WriteLine($"Car entry {c.PetName} was added from {source}");
            }
        }

        public DbSet<SeriLogEntry>? LogEntries { get; set; }
        public DbSet<CreditRisk>? CreditRisks { get; set; }
        public DbSet<Customer>? Customers { get; set; }
        public DbSet<Make>? Makes { get; set; }
        public DbSet<Car>? Cars { get; set; }
        public DbSet<Order>? Orders { get; set; }
        public DbSet<CustomerOrderViewModel>? CustomerOrderViewModels { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("Relational:Collation", "SQL_Latin1_General_CP1_CI_AS");
            modelBuilder.Entity<SeriLogEntry>(entity =>
            {
                entity.Property(e => e.Properties).HasColumnType("Xml");
                entity.Property(e => e.TimeStamp).HasDefaultValueSql("GetDate()");
            });

            modelBuilder.Entity<Car>(entity =>
            {
                entity.HasQueryFilter(c => c.IsDrivable);
                entity.Property(p => p.IsDrivable).HasField("_isDrivable").HasDefaultValue(true);
				entity.HasOne(d => d.MakeNavigation)
                    .WithMany(p => p!.Cars)
                    .HasForeignKey(d => d.MakeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Make_Inventory");
            });

            modelBuilder.Entity<CustomerOrderViewModel>().HasNoKey().ToView("CustomerOrderView", "dbo");
            modelBuilder.Entity<CreditRisk>(entity =>
            {
                entity.HasOne(d => d.CustomerNavigation)
                    .WithMany(p => p!.CreditRisks)
                    .HasForeignKey(d => d.CustomerId)
                    .HasConstraintName("FK_CreditRisks_Customers");
                entity.OwnsOne(o => o.PersonalInformation,
                    pd =>
                    {
                        pd.Property<string>(nameof(Person.FirstName))
                            .HasColumnName(nameof(Person.FirstName))
                            .HasColumnType("nvarchar(50)");
                        pd.Property<string>(nameof(Person.LastName))
                            .HasColumnName(nameof(Person.LastName))
                            .HasColumnType("nvarchar(50)");
                        pd.Property(p => p.FullName)
                            .HasColumnName(nameof(Person.FullName))
                            .HasComputedColumnSql("[LastName] + ', ' + [FirstName]");
                    });
            });

            modelBuilder.Entity<Customer>(entity =>
            {
                entity.OwnsOne(o => o.PersonalInformation,
                    pd =>
                    {
                        pd.Property(p => p.FirstName).HasColumnName(nameof(Person.FirstName));
                        pd.Property(p => p.LastName).HasColumnName(nameof(Person.LastName));
                        pd.Property(p => p.FullName)
                            .HasColumnName(nameof(Person.FullName))
                            .HasComputedColumnSql("[LastName] + ', ' + [FirstName]");
                    });
                //entity.Navigation(c => c.PersonalInformation).IsRequired(true);
            });

            modelBuilder.Entity<Make>(entity =>
            {
                entity.HasMany(e => e.Cars)
                    .WithOne(c => c.MakeNavigation!)
                    .HasForeignKey(k => k.MakeId)
                    .OnDelete(DeleteBehavior.Restrict)
                    .HasConstraintName("FK_Make_Inventory");
            });

            modelBuilder.Entity<Order>(entity =>
            {
                entity.HasOne(d => d.CarNavigation)
                    .WithMany(p => p!.Orders)
                    .HasForeignKey(d => d.CarId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Orders_Inventory");

                entity.HasOne(d => d.CustomerNavigation)
                    .WithMany(p => p!.Orders)
                    .HasForeignKey(d => d.CustomerId)
                    .OnDelete(DeleteBehavior.Cascade)
                    .HasConstraintName("FK_Orders_Customers");
                //entity.HasIndex(cr => new {cr.CustomerId, cr.CarId}).IsUnique(true);
            });
            //New in EF Core 5 - bi-directional query filters
            modelBuilder.Entity<Order>().HasQueryFilter(e => e.CarNavigation!.IsDrivable);
            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);

        public override int SaveChanges()
        {
            try
            {
                return base.SaveChanges();
            }
            catch (DbUpdateConcurrencyException ex)
            {
                //A concurrency error occurred
                //Should log and handle intelligently
                throw new CustomConcurrencyException("A concurrency error happened.", ex);
            }
            catch (RetryLimitExceededException ex)
            {
                //DbResiliency retry limit exceeded
                //Should log and handle intelligently
                throw new CustomRetryLimitExceededException("There is a problem with SQl Server.", ex);
            }
            catch (DbUpdateException ex)
            {
                //Should log and handle intelligently
                throw new CustomDbUpdateException("An error occurred updating the database", ex);
            }
            catch (Exception ex)
            {
                //Should log and handle intelligently
                throw new CustomException("An error occurred updating the database", ex);
            }
        }
    }
}
