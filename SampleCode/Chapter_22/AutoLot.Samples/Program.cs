using System;
using AutoLot.Samples;

Console.WriteLine("Fun with Entity Framework Core 5");

static void SampleSaveChanges()
{
    //The factory is not meant to be used like this, but it’s demo code :-)
    var context = new ApplicationDbContextFactory().CreateDbContext(null);
    //make some changes
    context.SaveChanges();
}
static void TransactedSaveChanges()
{
    //The factory is not meant to be used like this, but it’s demo code :-)
    var context = new ApplicationDbContextFactory().CreateDbContext(null);
    using var trans = context.Database.BeginTransaction();
    try 
    {
        //Create, change, delete stuff
        context.SaveChanges();
        trans.Commit();
    }
    catch (Exception ex)
    {
        trans.Rollback();
    }
}