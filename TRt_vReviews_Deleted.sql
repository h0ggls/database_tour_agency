CREATE OR ALTER TRIGGER dbo.t_vReviews_Deleted
ON dbo.vClosestAirport
INSTEAD OF DELETE
AS
	DECLARE @HotelName int = (SELECT TOP 1 HotelName FROM inserted)
	DECLARE @AirportName int = (SELECT TOP 1 AirportName FROM inserted)

	IF(@HotelName IS NULL)
	BEGIN
		ROLLBACK;
		THROW 50001, 'Данного отеля не существует!', 0
	END
	ELSE IF(@AirportName IS NULL)
	BEGIN
		ROLLBACK;
		THROW 50001, 'Данного аэропорта не существует!', 0
	END	
	ELSE
		DELETE FROM dbo.Hotels
		WHERE Name = @HotelName 
		Delete from dbo.Airports
		Where Name = @AirportName
GO
