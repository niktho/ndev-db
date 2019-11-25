CREATE PROCEDURE [testOrderDetails].[test Given customer is managing orders When customer is viewing order history Then OrderId must be displayed]
AS 
BEGIN
IF OBJECT_ID('actual') IS NOT NULL DROP TABLE actual;
IF OBJECT_ID('expected') IS NOT NULL DROP TABLE expected; 

--ASSEMBLE
CREATE TABLE expected (
	OrderId INT
)

INSERT INTO expected
SELECT 1
UNION ALL
SELECT 2

INSERT INTO dbo.Customer SELECT 'John', 'Middle','Doe', 21

EXEC tSQLt.FakeTable 'vOrderDetailsWithProductInformation', 'dbo'

INSERT INTO dbo.vOrderDetailsWithProductInformation (
	Customer_Id,
	Id
)
SELECT 2, 1
UNION ALL
SELECT 2, 2

--ACT

--ASSERT
SELECT OrderId INTO actual  
FROM dbo.vCustomerAndOrders

EXEC tSQLt.AssertEqualsTable 'expected', 'actual', 'OrderId was not returned when orders details was found'

END;