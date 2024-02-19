create function fn_GetAccomodation (@TripID as integer)
returns table
as
return
(Select distinct tbi.TripID,c.FirstName,c.LastName, h.Name as HotelName ,h.Country,h.City,r.Number as RoomNumber
from Clients c 
 join TicketBookingInfo tbi on c.Client_id=tbi.ClientID 
 join RoomBookingInfo rbi on tbi.TripID=rbi.TripID
 join RoomBooking rb on rbi.RoomBookID=rb.RoomBookID 
 join Rooms r on rb.RoomID=r.RoomID
 join Hotels h on r.HotelID=h.HotelID
 where tbi.TripID=@TripID)
