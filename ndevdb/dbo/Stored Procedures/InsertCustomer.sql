
CREATE PROCEDURE dbo.InsertCustomer
(
	@FirstName	NVARCHAR(255),
	@MiddleName NVARCHAR(255),
	@LastName	NVARCHAR(255),
	@Age		INT			 
)
AS 
BEGIN
SET NOCOUNT ON;

INSERT INTO dbo.Customer (FirstName, MiddleName, LastName, Age)
VALUES ( @FirstName, @MiddleName, @LastName, @Age)

SET NOCOUNT OFF;
END