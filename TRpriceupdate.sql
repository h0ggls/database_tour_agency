CREATE or alter TRIGGER priceupdate
ON Tickets
AFTER UPDATE AS
IF ( UPDATE (Price) )
BEGIN
declare @ticket varchar(50), @trip varchar(50)
declare c1 cursor LOCAL FORWARD_ONLY for 
SELECT distinct t.TicketID,tbi.TripID
  FROM Tickets t join TicketBookingInfo tbi on t.TicketId=tbi.TicketID  where UPDATE (Price) 
open c1
while (1=1)
begin
 FETCH NEXT FROM c1 INTO @ticket,@trip
 print 'Стоимость билета '+@ticket+' была изменена, измените cтоимость путёвки '+@trip
 if @@fetch_status<>0 break 
end 
close c1
END;
