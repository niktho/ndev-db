CREATE TABLE [dbo].[Customer] (
    [Id]         INT            IDENTITY (1, 1) NOT NULL,
    [FirstName]  NVARCHAR (255) NOT NULL,
    [MiddleName] NVARCHAR (255) NULL,
    [LastName]   NVARCHAR (255) NOT NULL,
    [Age]        INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

