CREATE TABLE [dbo].[Tickets] (
    [TicketID]      INT          IDENTITY (1, 1) NOT NULL,
    [FlightID]      INT          NOT NULL,
    [SeatNumber]    VARCHAR (32) NOT NULL,
    [Type]          VARCHAR (12) NOT NULL,
    [Price]         MONEY        NOT NULL,
    [BookingStatus] VARCHAR (32) NOT NULL,
    [HandLuggageKG] FLOAT (53)   NOT NULL,
    [LuggageKG]     FLOAT (53)   NOT NULL,
    PRIMARY KEY CLUSTERED ([TicketID] ASC),
    CONSTRAINT [flight_id] FOREIGN KEY ([FlightID]) REFERENCES [dbo].[Flights] ([FlightID])
);


GO

