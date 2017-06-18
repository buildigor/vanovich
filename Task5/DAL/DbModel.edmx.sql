
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/15/2017 22:36:46
-- Generated from EDMX file: G:\epam\Projects\vanovich\DAL\DAL\DbModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [ContentDb];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Managers'
CREATE TABLE [dbo].[Managers] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Clients'
CREATE TABLE [dbo].[Clients] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Products'
CREATE TABLE [dbo].[Products] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Sellings'
CREATE TABLE [dbo].[Sellings] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Date] datetime  NOT NULL,
    [Cost] float  NOT NULL,
    [ManagerId] int  NOT NULL,
    [ClientId] int  NOT NULL,
    [ProductId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Managers'
ALTER TABLE [dbo].[Managers]
ADD CONSTRAINT [PK_Managers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Clients'
ALTER TABLE [dbo].[Clients]
ADD CONSTRAINT [PK_Clients]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [PK_Products]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Sellings'
ALTER TABLE [dbo].[Sellings]
ADD CONSTRAINT [PK_Sellings]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ManagerId] in table 'Sellings'
ALTER TABLE [dbo].[Sellings]
ADD CONSTRAINT [FK_ManagerSelling]
    FOREIGN KEY ([ManagerId])
    REFERENCES [dbo].[Managers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ManagerSelling'
CREATE INDEX [IX_FK_ManagerSelling]
ON [dbo].[Sellings]
    ([ManagerId]);
GO

-- Creating foreign key on [ClientId] in table 'Sellings'
ALTER TABLE [dbo].[Sellings]
ADD CONSTRAINT [FK_ClientSelling]
    FOREIGN KEY ([ClientId])
    REFERENCES [dbo].[Clients]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientSelling'
CREATE INDEX [IX_FK_ClientSelling]
ON [dbo].[Sellings]
    ([ClientId]);
GO

-- Creating foreign key on [ManagerId] in table 'Sellings'
ALTER TABLE [dbo].[Sellings]
ADD CONSTRAINT [FK_ProductSelling]
    FOREIGN KEY ([ManagerId])
    REFERENCES [dbo].[Products]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductSelling'
CREATE INDEX [IX_FK_ProductSelling]
ON [dbo].[Sellings]
    ([ManagerId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------