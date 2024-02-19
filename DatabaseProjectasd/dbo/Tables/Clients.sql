CREATE TABLE [dbo].[Clients] (
    [Client_id]   INT           IDENTITY (1, 1) NOT NULL,
    [FirstName]   VARCHAR (64)  NOT NULL,
    [LastName]    VARCHAR (64)  NOT NULL,
    [MiddleName]  VARCHAR (64)  NOT NULL,
    [Passport]    VARCHAR (128) NOT NULL,
    [Addres]      VARCHAR (128) NOT NULL,
    [PhoneNumber] VARCHAR (16)  NOT NULL,
    [eMail]       VARCHAR (64)  NULL,
    [BirthDate]   DATE          NOT NULL,
    PRIMARY KEY CLUSTERED ([Client_id] ASC)
);


GO

