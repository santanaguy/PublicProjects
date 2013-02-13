
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 02/12/2013 23:31:47
-- Generated from EDMX file: C:\Users\Admin\documents\visual studio 2012\Projects\SimpleAccount\SimpleAccount\Maps\MyG_Admin.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [MyG_Admin];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [IDUser] int IDENTITY(1,1) NOT NULL,
    [Login] varchar(20)  NOT NULL,
    [Password] varchar(30)  NOT NULL,
    [DataCriacao] datetime  NOT NULL,
    [UltimoLogin] datetime  NOT NULL,
    [Nome] varchar(200)  NOT NULL,
    [Morada] varchar(500)  NULL,
    [Contacto] varchar(100)  NOT NULL,
    [NIF] varchar(20)  NULL,
    [DataNascimento] datetime  NOT NULL,
    [Email] varchar(100)  NULL,
    [Sexo] char(1)  NULL,
    [LastUpdate] datetime  NULL,
    [IDUserCreator] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [IDUser] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([IDUser] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------