CREATE or alter TRIGGER viewalter
ON Airports
INSTEAD OF UPDATE AS
if update(AirportID)
PRINT 'Невозможно изменить ID'
