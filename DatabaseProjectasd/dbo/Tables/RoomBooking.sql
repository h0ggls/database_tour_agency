CREATE TABLE [dbo].[RoomBooking] (
    [RoomBookId]     INT        IDENTITY (1, 1) NOT NULL,
    [RoomID]         INT        NOT NULL,
    [BookingStart]   DATE       NOT NULL,
    [BoookingFinish] DATE       NOT NULL,
    [Days]           FLOAT (53) NOT NULL,
    PRIMARY KEY CLUSTERED ([RoomBookId] ASC),
    CONSTRAINT [room_id] FOREIGN KEY ([RoomID]) REFERENCES [dbo].[Rooms] ([RoomId])
);


GO

