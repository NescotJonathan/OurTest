
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/23/2023 11:37:03
-- Generated from EDMX file: C:\Users\jjacobson\source\repos\NescotJonathan\OurTest\OurTest\test.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [test];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Pizza_ToPerson]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Pizza] DROP CONSTRAINT [FK_Pizza_ToPerson];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Person]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Person];
GO
IF OBJECT_ID(N'[dbo].[Pizza]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Pizza];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'People'
CREATE TABLE [dbo].[People] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] varchar(50)  NULL,
    [MyNumber] int  NULL
);
GO

-- Creating table 'Pizzas'
CREATE TABLE [dbo].[Pizzas] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Customer_ID] int  NOT NULL,
    [PizzaPrice] decimal(10,4)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'People'
ALTER TABLE [dbo].[People]
ADD CONSTRAINT [PK_People]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Pizzas'
ALTER TABLE [dbo].[Pizzas]
ADD CONSTRAINT [PK_Pizzas]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Customer_ID] in table 'Pizzas'
ALTER TABLE [dbo].[Pizzas]
ADD CONSTRAINT [FK_Pizza_ToPerson]
    FOREIGN KEY ([Customer_ID])
    REFERENCES [dbo].[People]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Pizza_ToPerson'
CREATE INDEX [IX_FK_Pizza_ToPerson]
ON [dbo].[Pizzas]
    ([Customer_ID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------