CREATE VIEW [dbo].[vOrderDetailsWithProductInformation]
AS 
SELECT
	o.Id, o.Customer_Id , p.ProductName, p.Price, o.CustomerComments, o.OrderDate, o.ShipmentDate, o.DeliveryDate
FROM
	dbo.OrderDetails o
INNER JOIN dbo.Product p
	ON p.Id = o.Product_Id
