CREATE TABLE [dbo].[RoomTypes] (
    [TypeId]   INT           IDENTITY (1, 1) NOT NULL,
    [RoomType] VARCHAR (32)  NOT NULL,
    [People]   VARCHAR (128) NOT NULL,
    PRIMARY KEY CLUSTERED ([TypeId] ASC)
);


GO

