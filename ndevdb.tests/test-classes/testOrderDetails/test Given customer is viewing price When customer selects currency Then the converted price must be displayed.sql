CREATE PROCEDURE [testOrderDetails].[test Given customer is viewing price When customer selects currency Then the converted price must be displayed]
AS 
BEGIN

--ASSEMBLE
DECLARE @Price DECIMAL = 2;
DECLARE @Currency VARCHAR(3) = 'NOK'
DECLARE @expected INT = 1

EXEC tSQLt.SpyProcedure 'ConvertToCurrency', 'DECLARE @convertedValue INT; SET @convertedValue = 1; SELECT @convertedValue'

--ACT
DECLARE @actual TABLE(
	Price INT
)
INSERT INTO @actual 
exec dbo.ConvertToCurrency @Price, @Currency

DECLARE @actualVaue INT = (SELECT TOP 1 * FROM @actual)

--ASSERT
EXEC tSQLt.AssertEquals @expected, @actualVaue

END;