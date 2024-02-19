create or alter procedure AlterTicketPrice (@FlightID int, @type varchar(50), @procent int)
as
declare @p int
if @type='+'
  update Tickets
  set Price= Price * cast((100+@procent)as float)/100
 where FlightID=@FlightID
else
if @type='-'
  update Tickets
  set Price= Price * cast((100-@procent)as float)/100 
where FlightID=@FlightID
