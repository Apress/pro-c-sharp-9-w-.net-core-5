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

CREATE TABLE [Make] (
    [Id] int NOT NULL IDENTITY,
    [Name] nvarchar(max) NULL,
    [TimeStamp] varbinary(max) NULL,
    CONSTRAINT [PK_Make] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [Cars] (
    [Id] int NOT NULL IDENTITY,
    [Color] nvarchar(max) NULL,
    [PetName] nvarchar(max) NULL,
    [MakeId] int NOT NULL,
    [TimeStamp] varbinary(max) NULL,
    CONSTRAINT [PK_Cars] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Cars_Make_MakeId] FOREIGN KEY ([MakeId]) REFERENCES [Make] ([Id]) ON DELETE CASCADE
);
GO

CREATE INDEX [IX_Cars_MakeId] ON [Cars] ([MakeId]);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20201230020509_One2Many', N'5.0.1');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

ALTER TABLE [Cars] DROP CONSTRAINT [FK_Cars_Make_MakeId];
GO

ALTER TABLE [Make] DROP CONSTRAINT [PK_Make];
GO

EXEC sp_rename N'[Make]', N'Makes';
GO

ALTER TABLE [Makes] ADD CONSTRAINT [PK_Makes] PRIMARY KEY ([Id]);
GO

CREATE TABLE [Radio] (
    [Id] int NOT NULL IDENTITY,
    [HasTweeters] bit NOT NULL,
    [HasSubWoofers] bit NOT NULL,
    [RadioId] nvarchar(max) NULL,
    [CarId] int NOT NULL,
    [TimeStamp] varbinary(max) NULL,
    CONSTRAINT [PK_Radio] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Radio_Cars_CarId] FOREIGN KEY ([CarId]) REFERENCES [Cars] ([Id]) ON DELETE CASCADE
);
GO

CREATE UNIQUE INDEX [IX_Radio_CarId] ON [Radio] ([CarId]);
GO

ALTER TABLE [Cars] ADD CONSTRAINT [FK_Cars_Makes_MakeId] FOREIGN KEY ([MakeId]) REFERENCES [Makes] ([Id]) ON DELETE CASCADE;
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20201230020642_One2One', N'5.0.1');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

ALTER TABLE [Radio] DROP CONSTRAINT [FK_Radio_Cars_CarId];
GO

ALTER TABLE [Radio] DROP CONSTRAINT [PK_Radio];
GO

EXEC sp_rename N'[Radio]', N'Radios';
GO

EXEC sp_rename N'[Radios].[IX_Radio_CarId]', N'IX_Radios_CarId', N'INDEX';
GO

ALTER TABLE [Radios] ADD CONSTRAINT [PK_Radios] PRIMARY KEY ([Id]);
GO

CREATE TABLE [Drivers] (
    [Id] int NOT NULL IDENTITY,
    [FirstName] nvarchar(max) NULL,
    [LastName] nvarchar(max) NULL,
    [TimeStamp] varbinary(max) NULL,
    CONSTRAINT [PK_Drivers] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [CarDriver] (
    [CarsId] int NOT NULL,
    [DriversId] int NOT NULL,
    CONSTRAINT [PK_CarDriver] PRIMARY KEY ([CarsId], [DriversId]),
    CONSTRAINT [FK_CarDriver_Cars_CarsId] FOREIGN KEY ([CarsId]) REFERENCES [Cars] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_CarDriver_Drivers_DriversId] FOREIGN KEY ([DriversId]) REFERENCES [Drivers] ([Id]) ON DELETE CASCADE
);
GO

CREATE INDEX [IX_CarDriver_DriversId] ON [CarDriver] ([DriversId]);
GO

ALTER TABLE [Radios] ADD CONSTRAINT [FK_Radios_Cars_CarId] FOREIGN KEY ([CarId]) REFERENCES [Cars] ([Id]) ON DELETE CASCADE;
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20201230021049_Many2Many', N'5.0.1');
GO

COMMIT;
GO

