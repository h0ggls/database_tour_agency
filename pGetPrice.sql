create or alter procedure GetPrice (@TripID int)
as
declare @p int= dbo.fn_GetPrice(@TripID)
update TripSold
set TotalPrice=@p 
where TripID=@TripID
