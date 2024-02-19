CREATE TABLE [dbo].[Airports] (
    [AirportID] INT          IDENTITY (1, 1) NOT NULL,
    [Name]      VARCHAR (64) NOT NULL,
    [Country]   VARCHAR (64) NOT NULL,
    [City]      VARCHAR (64) NOT NULL,
    PRIMARY KEY CLUSTERED ([AirportID] ASC)
);


GO

