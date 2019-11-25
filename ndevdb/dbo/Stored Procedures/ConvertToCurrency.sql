CREATE PROCEDURE [dbo].[ConvertToCurrency]
(
	@Price DECIMAL, 
	@Currency VARCHAR(3)
)
AS
BEGIN
	DECLARE @convertedValue INT = 0;
	SELECT  @convertedValue;
END
