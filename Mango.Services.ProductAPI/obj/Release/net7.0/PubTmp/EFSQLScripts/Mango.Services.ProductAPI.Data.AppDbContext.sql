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

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20230624074229_immagesSchema')
BEGIN
    ALTER TABLE [Products] ADD [ImageLocalPath] nvarchar(max) NULL;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20230624074229_immagesSchema')
BEGIN
    EXEC(N'UPDATE [Products] SET [ImageLocalPath] = NULL
    WHERE [ProductId] = 1;
    SELECT @@ROWCOUNT');
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20230624074229_immagesSchema')
BEGIN
    EXEC(N'UPDATE [Products] SET [ImageLocalPath] = NULL
    WHERE [ProductId] = 2;
    SELECT @@ROWCOUNT');
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20230624074229_immagesSchema')
BEGIN
    EXEC(N'UPDATE [Products] SET [ImageLocalPath] = NULL
    WHERE [ProductId] = 3;
    SELECT @@ROWCOUNT');
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20230624074229_immagesSchema')
BEGIN
    EXEC(N'UPDATE [Products] SET [ImageLocalPath] = NULL
    WHERE [ProductId] = 4;
    SELECT @@ROWCOUNT');
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20230624074229_immagesSchema')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20230624074229_immagesSchema', N'7.0.7');
END;
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20230624083953_change')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20230624083953_change', N'7.0.7');
END;
GO

COMMIT;
GO

