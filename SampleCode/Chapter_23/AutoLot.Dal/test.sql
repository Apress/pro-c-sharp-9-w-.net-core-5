IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

CREATE TABLE [Customers] (
    [Id] int NOT NULL IDENTITY,
    [FirstName] nvarchar(50) NOT NULL,
    [LastName] nvarchar(50) NOT NULL,
    [TimeStamp] rowversion NULL,
    CONSTRAINT [PK_Customers] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [Makes] (
    [Id] int NOT NULL IDENTITY,
    [Name] nvarchar(50) NOT NULL,
    [TimeStamp] rowversion NULL,
    CONSTRAINT [PK_Makes] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [CreditRisks] (
    [Id] int NOT NULL IDENTITY,
    [FirstName] nvarchar(50) NOT NULL,
    [LastName] nvarchar(50) NOT NULL,
    [CustomerId] int NOT NULL,
    [TimeStamp] rowversion NULL,
    CONSTRAINT [PK_CreditRisks] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_CreditRisks_Customers] FOREIGN KEY ([CustomerId]) REFERENCES [Customers] ([Id]) ON DELETE CASCADE
);
GO

CREATE TABLE [Inventory] (
    [Id] int NOT NULL IDENTITY,
    [MakeId] int NOT NULL,
    [Color] nvarchar(50) NOT NULL,
    [PetName] nvarchar(50) NOT NULL,
    [TimeStamp] rowversion NULL,
    CONSTRAINT [PK_Inventory] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Make_Inventory] FOREIGN KEY ([MakeId]) REFERENCES [Makes] ([Id]) ON DELETE NO ACTION
);
GO

CREATE TABLE [Orders] (
    [Id] int NOT NULL IDENTITY,
    [CustomerId] int NOT NULL,
    [CarId] int NOT NULL,
    [TimeStamp] rowversion NULL,
    CONSTRAINT [PK_Orders] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Orders_Customers] FOREIGN KEY ([CustomerId]) REFERENCES [Customers] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_Orders_Inventory] FOREIGN KEY ([CarId]) REFERENCES [Inventory] ([Id]) ON DELETE NO ACTION
);
GO

CREATE INDEX [IX_CreditRisks_CustomerId] ON [CreditRisks] ([CustomerId]);
GO

CREATE INDEX [IX_Inventory_MakeId] ON [Inventory] ([MakeId]);
GO

CREATE INDEX [IX_Orders_CarId] ON [Orders] ([CarId]);
GO

CREATE UNIQUE INDEX [IX_Orders_CustomerId_CarId] ON [Orders] ([CustomerId], [CarId]);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20201231203939_Initial', N'5.0.1');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF SCHEMA_ID(N'Logging') IS NULL EXEC(N'CREATE SCHEMA [Logging];');
GO

ALTER SCHEMA [dbo] TRANSFER [Orders];
GO

ALTER SCHEMA [dbo] TRANSFER [Makes];
GO

ALTER SCHEMA [dbo] TRANSFER [Inventory];
GO

ALTER SCHEMA [dbo] TRANSFER [Customers];
GO

ALTER SCHEMA [dbo] TRANSFER [CreditRisks];
GO

ALTER TABLE [dbo].[Inventory] ADD [IsDriveable] bit NOT NULL DEFAULT CAST(1 AS bit);
GO

ALTER TABLE [dbo].[Customers] ADD [FullName] AS [LastName] + ', ' + [FirstName];
GO

ALTER TABLE [dbo].[CreditRisks] ADD [FullName] AS [LastName] + ', ' + [FirstName];
GO

CREATE TABLE [Logging].[SeriLogs] (
    [Id] int NOT NULL IDENTITY,
    [Message] nvarchar(max) NULL,
    [MessageTemplate] nvarchar(max) NULL,
    [Level] nvarchar(128) NULL,
    [TimeStamp] datetime2 NULL DEFAULT (GetDate()),
    [Exception] nvarchar(max) NULL,
    [Properties] Xml NULL,
    [LogEvent] nvarchar(max) NULL,
    [SourceContext] nvarchar(max) NULL,
    [RequestPath] nvarchar(max) NULL,
    [ActionName] nvarchar(max) NULL,
    [ApplicationName] nvarchar(max) NULL,
    [MachineName] nvarchar(max) NULL,
    [FilePath] nvarchar(max) NULL,
    [MemberName] nvarchar(max) NULL,
    [LineNumber] int NULL,
    CONSTRAINT [PK_SeriLogs] PRIMARY KEY ([Id])
);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20210101022459_UpdatedEntities', N'5.0.1');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO


                exec (N' 
                CREATE PROCEDURE [dbo].[GetPetName]
                    @carID int,
                    @petName nvarchar(50) output
                AS
                    SELECT @petName = PetName from dbo.Inventory where Id = @carID
                ')
GO


                exec (N' 
                CREATE VIEW [dbo].[CustomerOrderView]
                AS
                    SELECT dbo.Customers.FirstName, dbo.Customers.LastName, dbo.Inventory.Color, dbo.Inventory.PetName, dbo.Makes.Name AS Make
                    FROM   dbo.Orders 
                    INNER JOIN dbo.Customers ON dbo.Orders.CustomerId = dbo.Customers.Id 
                    INNER JOIN dbo.Inventory ON dbo.Orders.CarId = dbo.Inventory.Id
                    INNER JOIN dbo.Makes ON dbo.Makes.Id = dbo.Inventory.MakeId
                ')
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20210101024543_SQL', N'5.0.1');
GO

COMMIT;
GO

