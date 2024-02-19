CREATE TABLE [dbo].[TripSold] (
    [TripID]        INT           IDENTITY (1, 1) NOT NULL,
    [People]        VARCHAR (128) NOT NULL,
    [TotalPrice]    VARCHAR (1)   NOT NULL,
    [DateOfBooking] DATE          NOT NULL,
    [FlightTo]      INT           NOT NULL,
    [FlightFrom]    INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([TripID] ASC),
    CONSTRAINT [flight_from] FOREIGN KEY ([FlightFrom]) REFERENCES [dbo].[Flights] ([FlightID]),
    CONSTRAINT [flight_to] FOREIGN KEY ([FlightTo]) REFERENCES [dbo].[Flights] ([FlightID])
);


GO

