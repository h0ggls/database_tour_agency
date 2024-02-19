CREATE TABLE [dbo].[Hotels] (
    [HotelId]       INT          IDENTITY (1, 1) NOT NULL,
    [Name]          VARCHAR (64) NOT NULL,
    [Rating]        VARCHAR (10) NOT NULL,
    [Country]       VARCHAR (32) NOT NULL,
    [City]          VARCHAR (32) NOT NULL,
    [ClosesAirport] INT          NOT NULL,
    PRIMARY KEY CLUSTERED ([HotelId] ASC),
    CONSTRAINT [closes_airport] FOREIGN KEY ([ClosesAirport]) REFERENCES [dbo].[Airports] ([AirportID])
);


GO

