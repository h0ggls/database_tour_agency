CREATE TABLE [dbo].[TicketBookingInfo] (
    [ClientID] INT NOT NULL,
    [TripID]   INT NOT NULL,
    [TicketID] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([ClientID] ASC, [TripID] ASC, [TicketID] ASC),
    CONSTRAINT [Client_id] FOREIGN KEY ([ClientID]) REFERENCES [dbo].[Clients] ([Client_id]),
    CONSTRAINT [Ticket_id] FOREIGN KEY ([TicketID]) REFERENCES [dbo].[Tickets] ([TicketID]),
    CONSTRAINT [Trip_id] FOREIGN KEY ([TripID]) REFERENCES [dbo].[TripSold] ([TripID])
);


GO

