-- Create database for Klick 

USE master;
GO
CREATE DATABASE Klick;
GO

-- Show the entry for klick db in the system tables
SELECT * FROM sys.databases WHERE name = 'Klick';

-- Change to the new database context
USE Klick;
GO

-- Show the layout of the files for the database
EXEC sp_helpfile;
GO

-- Create schema for Klick Medications 
CREATE SCHEMA Medications 
    AUTHORIZATION dbo;
GO


