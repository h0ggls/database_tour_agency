CREATE function fn_GetPrice (@TripID as integer)
returns money as
begin
declare @roomdays int
declare @roomprice money
declare @price money
declare @flightprice money
set @price=0
declare c3 cursor LOCAL FORWARD_ONLY for 
SELECT distinct rb.Days,r.PriceNight
  FROM Rooms r join RoomBooking rb on r.RoomID=rb.RoomID join RoomBookingInfo rbi on  rb.RoomBookID=rbi.RoomBookID 
 where rbi.TripID=@TripID
open c3
while (1=1)
begin
 FETCH NEXT FROM c3 INTO @roomdays,@roomprice
 if @@fetch_status<>0 break 
 set @price=@price+(@roomdays*@roomprice)
end 
close c3
select @price=@price+  SUM(t.Price) from Tickets t 
join TicketBookingInfo tbi on t.TicketID=tbi.TicketID 
where tbi.TripID=@TripID
return @price
end
