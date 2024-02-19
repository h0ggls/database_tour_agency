create or Alter view vRoomBookedClient(ClientName,Surname,RoomNumber,Type,BookingStart,Bookingfinish)
as select distinct c.FirstName, c.LastName, r.Number, rt.RoomType, rb.BookingStart,rb.BoookingFinish
from Clients c
join TicketBookingInfo tbi on c.Client_id=tbi.ClientID 
join TripSold ts on tbi.TripID=ts.TripID 
join RoomBookingInfo rbi on ts.TripID =rbi.TripID
join RoomBooking rb on rbi.RoomBookID=rb.RoomBookID
join Rooms r on r.RoomID =rb.RoomID
join RoomTypes rt on rt.TypeID=r.TypeID
