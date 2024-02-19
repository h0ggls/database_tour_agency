CREATE TABLE [dbo].[Flights] (
    [FlightID]      INT  IDENTITY (1, 1) NOT NULL,
    [AirportFrom]   INT  NOT NULL,
    [AirportTo]     INT  NOT NULL,
    [DateOfDepart]  DATE NOT NULL,
    [DateOfArrival] DATE NOT NULL,
    PRIMARY KEY CLUSTERED ([FlightID] ASC),
    CONSTRAINT [airport_from] FOREIGN KEY ([AirportFrom]) REFERENCES [dbo].[Airports] ([AirportID]),
    CONSTRAINT [airport_to] FOREIGN KEY ([AirportTo]) REFERENCES [dbo].[Airports] ([AirportID])
);


GO

