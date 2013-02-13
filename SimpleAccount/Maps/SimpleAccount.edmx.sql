
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 02/12/2013 23:19:40
-- Generated from EDMX file: C:\Users\Admin\documents\visual studio 2012\Projects\SimpleAccount\SimpleAccount\Maps\SimpleAccount.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [SimpleAccount];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_AccountsAccountTypes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Accounts1] DROP CONSTRAINT [FK_AccountsAccountTypes];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Accounts1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Accounts1];
GO
IF OBJECT_ID(N'[dbo].[AccountType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AccountType];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Accounts1'
CREATE TABLE [dbo].[Accounts1] (
    [IDAccount] int IDENTITY(1,1) NOT NULL,
    [Description] varchar(100)  NOT NULL,
    [IDAccountType] int  NOT NULL,
    [IDUser] int  NOT NULL,
    [LastUpdate] nvarchar(max)  NOT NULL,
    [AccountType_IDAccountType] int  NOT NULL
);
GO

-- Creating table 'AccountType'
CREATE TABLE [dbo].[AccountType] (
    [IDAccountType] int  NOT NULL,
    [Description] varchar(100)  NOT NULL,
    [LastUpdate] datetime  NOT NULL,
    [IDUser] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [IDAccount] in table 'Accounts1'
ALTER TABLE [dbo].[Accounts1]
ADD CONSTRAINT [PK_Accounts1]
    PRIMARY KEY CLUSTERED ([IDAccount] ASC);
GO

-- Creating primary key on [IDAccountType] in table 'AccountType'
ALTER TABLE [dbo].[AccountType]
ADD CONSTRAINT [PK_AccountType]
    PRIMARY KEY CLUSTERED ([IDAccountType] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [AccountType_IDAccountType] in table 'Accounts1'
ALTER TABLE [dbo].[Accounts1]
ADD CONSTRAINT [FK_AccountsAccountTypes]
    FOREIGN KEY ([AccountType_IDAccountType])
    REFERENCES [dbo].[AccountType]
        ([IDAccountType])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AccountsAccountTypes'
CREATE INDEX [IX_FK_AccountsAccountTypes]
ON [dbo].[Accounts1]
    ([AccountType_IDAccountType]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------