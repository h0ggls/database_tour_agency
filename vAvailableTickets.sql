Create or Alter  view vAvailableTickets (FlightID,CityFrom,CityTo,TicketID,SeatNumber,TicketPrice)
as select f.FlightID,af.City,att.CityTo,t.TicketID,t.SeatNumber,t.Price
from Tickets t join Flights f on t.FlightID=f.FlightID 
join Airports af on f.AirportFrom=af.AirportID 
join (Select distinct f. FlightID ,at.City CityTo
from TicketBookingInfo tbi 
join Tickets t on tbi.TicketID=t.TicketId 
join Flights f on t.FlightID=f.FlightID 
join Airports at on f.AirportTo=at.AirportID)  att 
on att.FlightID= f.FlightID
where t.BookingStatus='Свободно';
