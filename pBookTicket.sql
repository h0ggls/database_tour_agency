create or alter procedure BookTicket (@TicketID int=NULL)
as 
BEGIN TRY
update Tickets
set BookingStatus='Забронированно' where TicketID=@TicketID
if @@ROWCOUNT<1
   RAISERROR('Внесите ID билета для бронирования',16,0);

END TRY
BEGIN CATCH 
PRINT'Произошла ошибка:';
PRINT ERROR_MESSAGE();
END CATCH;
