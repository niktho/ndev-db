CREATE PROCEDURE [testOrderDetails].[test Given customer is creating a order When customer add comments Then save @OrderDetails]
AS 
BEGIN

--ASSEMBLE
DECLARE @CustomerComments VARCHAR(255) = 'As agreed upon, the package should be packed in a Hello Kitty gift wrapper'

--This will remove constraint errors and is 
--the reason why we are using fake-tables. 
EXEC tSQLt.FakeTable 'OrderDetails', 'dbo'

--ACT
EXEC dbo.InsertOrderDetails @CustomerComments, 1, 1

--ASSERT
DECLARE @Actual VARCHAR(255) = (SELECT TOP 1 CustomerComments FROM dbo.OrderDetails)


EXEC tSQLt.AssertEqualsString @CustomerComments, @Actual, 'Cusomter comments was not saved when @CustomerComments was given'

END;