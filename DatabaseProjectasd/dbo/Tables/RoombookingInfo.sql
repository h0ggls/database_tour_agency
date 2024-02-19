CREATE TABLE [dbo].[RoombookingInfo] (
    [RoomBookId] INT NOT NULL,
    [TripID]     INT NOT NULL,
    PRIMARY KEY CLUSTERED ([RoomBookId] ASC, [TripID] ASC),
    CONSTRAINT [room_book_id] FOREIGN KEY ([RoomBookId]) REFERENCES [dbo].[RoomBooking] ([RoomBookId]),
    CONSTRAINT [trip__id] FOREIGN KEY ([TripID]) REFERENCES [dbo].[TripSold] ([TripID])
);


GO

