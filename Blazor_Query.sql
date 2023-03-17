USE master
GO
--CREATE, ALTER, DROP IS DATABASE DEFINITION LANGUAGE (DDL)
IF DB_ID('Blazor_LoginDB') IS NOT NULL
	BEGIN
		ALTER DATABASE Blazor_LoginDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE
		DROP DATABASE Blazor_LoginDB
	END

Create DATABASE Blazor_LoginDB
GO
USE Blazor_LoginDB
GO

CREATE TABLE User_Info
(
	ID int IDENTITY,--Gives Datatypes to the Columns. IDENTITY
	[Name] nvarchar(MAX),--Nvarchar includes more options than normal varchar. The[Brackets] are so the "Name" could be used.
	[Password] nvarchar(MAX)
)
INSERT INTO User_Info VALUES('Max','Passw0rd')
INSERT INTO User_Info VALUES('Tom','Pass')
SELECT * FROM User_Info WHERE 'Max' =[name] AND 'Passw0rd' = [password]