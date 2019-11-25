CREATE PROCEDURE [dbo].[InsertOrderDetails](
	@CustomerComments VARCHAR(255),
	@Customer_Id INT,
	@Product_Id INT
)
AS
	
INSERT INTO dbo.OrderDetails (
	CustomerComments,
	Customer_Id,
	Product_Id,
	OrderDate
)
VALUES (
	@CustomerComments,
	@Customer_Id,
	@Product_Id,
	GETDATE()
)