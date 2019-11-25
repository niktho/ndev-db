CREATE PROCEDURE dbo.GetCustomerOrders (
	@Customer_Id INT,
	@Currency VARCHAR(3)
)
AS
BEGIN

SELECT 
	Customer_Id,
	OrderId,
	dbo.ConvertToCurrency(Price, 'NOK') as LocalCurrency
FROM dbo.vCustomerAndOrders
WHERE Customer_Id = @Customer_Id

END