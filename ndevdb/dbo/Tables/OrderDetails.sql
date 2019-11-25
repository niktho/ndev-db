CREATE TABLE [dbo].[OrderDetails]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
	[CustomerComments] VARCHAR(255) NULL,
	Customer_Id INT CONSTRAINT FK_OrderDetails_Customer FOREIGN KEY REFERENCES dbo.Customer(Id),
	Product_Id INT CONSTRAINT FK_OrderDetail_Product FOREIGN KEY REFERENCES dbo.Product(Id),
	OrderDate DATETIME,
	ShipmentDate DATETIME,
	DeliveryDate DATETIME
)
