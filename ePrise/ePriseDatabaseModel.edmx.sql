
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 02/26/2015 23:38:05
-- Generated from EDMX file: C:\Users\Christian\Documents\GitHub\ePrise\ePrise\ePrise\ePriseDatabaseModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [ePrise];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_SaleCustomer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Sales] DROP CONSTRAINT [FK_SaleCustomer];
GO
IF OBJECT_ID(N'[dbo].[FK_SaleItem]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Sales] DROP CONSTRAINT [FK_SaleItem];
GO
IF OBJECT_ID(N'[dbo].[FK_ItemVendor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Items] DROP CONSTRAINT [FK_ItemVendor];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Items]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Items];
GO
IF OBJECT_ID(N'[dbo].[Customers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Customers];
GO
IF OBJECT_ID(N'[dbo].[Sales]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Sales];
GO
IF OBJECT_ID(N'[dbo].[Vendors]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Vendors];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Items'
CREATE TABLE [dbo].[Items] (
    [ItemId] int IDENTITY(1,1) NOT NULL,
    [ItemName] nvarchar(max)  NOT NULL,
    [ItemCost] decimal(18,0)  NOT NULL,
    [VendorVendorId] int  NOT NULL
);
GO

-- Creating table 'Customers'
CREATE TABLE [dbo].[Customers] (
    [CustomerId] int IDENTITY(1,1) NOT NULL,
    [CustomerFirstName] nvarchar(max)  NOT NULL,
    [CustomerLastName] nvarchar(max)  NOT NULL,
    [CustomerAddress] nvarchar(max)  NULL,
    [CustomerZip] smallint  NULL
);
GO

-- Creating table 'Sales'
CREATE TABLE [dbo].[Sales] (
    [SaleId] int IDENTITY(1,1) NOT NULL,
    [SalePrice] decimal(18,0)  NOT NULL,
    [SaleDate] datetime  NOT NULL,
    [SaleProfit] decimal(18,0)  NOT NULL,
    [SaleLocation] nvarchar(max)  NOT NULL,
    [CustomerCustomerId] int  NOT NULL,
    [ItemItemId] int  NOT NULL
);
GO

-- Creating table 'Vendors'
CREATE TABLE [dbo].[Vendors] (
    [VendorId] int IDENTITY(1,1) NOT NULL,
    [VendorName] nvarchar(max)  NOT NULL,
    [VendorAddress] nvarchar(max)  NULL,
    [VendorZip] smallint  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ItemId] in table 'Items'
ALTER TABLE [dbo].[Items]
ADD CONSTRAINT [PK_Items]
    PRIMARY KEY CLUSTERED ([ItemId] ASC);
GO

-- Creating primary key on [CustomerId] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [PK_Customers]
    PRIMARY KEY CLUSTERED ([CustomerId] ASC);
GO

-- Creating primary key on [SaleId] in table 'Sales'
ALTER TABLE [dbo].[Sales]
ADD CONSTRAINT [PK_Sales]
    PRIMARY KEY CLUSTERED ([SaleId] ASC);
GO

-- Creating primary key on [VendorId] in table 'Vendors'
ALTER TABLE [dbo].[Vendors]
ADD CONSTRAINT [PK_Vendors]
    PRIMARY KEY CLUSTERED ([VendorId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CustomerCustomerId] in table 'Sales'
ALTER TABLE [dbo].[Sales]
ADD CONSTRAINT [FK_SaleCustomer]
    FOREIGN KEY ([CustomerCustomerId])
    REFERENCES [dbo].[Customers]
        ([CustomerId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SaleCustomer'
CREATE INDEX [IX_FK_SaleCustomer]
ON [dbo].[Sales]
    ([CustomerCustomerId]);
GO

-- Creating foreign key on [ItemItemId] in table 'Sales'
ALTER TABLE [dbo].[Sales]
ADD CONSTRAINT [FK_SaleItem]
    FOREIGN KEY ([ItemItemId])
    REFERENCES [dbo].[Items]
        ([ItemId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SaleItem'
CREATE INDEX [IX_FK_SaleItem]
ON [dbo].[Sales]
    ([ItemItemId]);
GO

-- Creating foreign key on [VendorVendorId] in table 'Items'
ALTER TABLE [dbo].[Items]
ADD CONSTRAINT [FK_ItemVendor]
    FOREIGN KEY ([VendorVendorId])
    REFERENCES [dbo].[Vendors]
        ([VendorId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ItemVendor'
CREATE INDEX [IX_FK_ItemVendor]
ON [dbo].[Items]
    ([VendorVendorId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------