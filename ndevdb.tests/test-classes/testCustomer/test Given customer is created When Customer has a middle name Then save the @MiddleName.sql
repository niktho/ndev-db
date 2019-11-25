CREATE PROCEDURE [testCustomer].[test Given customer is created When Customer has a middle name Then save the @MiddleName]
AS 
BEGIN

--ASSEMBLE
DECLARE @FirstName NVARCHAR = 'John';
DECLARE @MiddleName NVARCHAR = 'Middle';
DECLARE @LastName NVARCHAR = 'Doe';
DECLARE @Age INT = 21;

--ACT
EXEC dbo.InsertCustomer @FirstName, @MiddleName, @LastName, @Age;

--ASSERT
DECLARE @Actual NVARCHAR = (SELECT TOP 1 MiddleName FROM dbo.Customer)


EXEC tSQLt.AssertEqualsString @MiddleName, @Actual, 'Middle name was not saved when @MiddleName was given'

END;