CREATE TABLE [dbo].[Rooms] (
    [RoomId]     INT          IDENTITY (1, 1) NOT NULL,
    [HotelId]    INT          NOT NULL,
    [TypeId]     INT          NOT NULL,
    [PriceNight] VARCHAR (64) NOT NULL,
    [Number]     VARCHAR (32) NOT NULL,
    PRIMARY KEY CLUSTERED ([RoomId] ASC),
    CONSTRAINT [hotel_id] FOREIGN KEY ([HotelId]) REFERENCES [dbo].[Hotels] ([HotelId]),
    CONSTRAINT [type_id] FOREIGN KEY ([TypeId]) REFERENCES [dbo].[RoomTypes] ([TypeId])
);


GO

