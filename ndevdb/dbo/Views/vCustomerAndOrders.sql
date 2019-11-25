CREATE VIEW [dbo].[vCustomerAndOrders]
AS
SELECT
	c.Id as Customer_Id,	
	c.FirstName,
	c.MiddleName,
	c.LastName,
	o.Id as OrderId,
	o.ProductName,
	o.CustomerComments,
	o.Price
FROM dbo.Customer c
LEFT JOIN dbo.vOrderDetailsWithProductInformation o
	ON o.Customer_Id = c.Id