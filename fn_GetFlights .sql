Create or alter function fn_GetFlights (@ClientID as integer)
returns table
as
return
(Select distinct c.FirstName,c.LastName, t.FlightID,t.SeatNumber ,af.Country as CountryFrom,af.City CityFrom,af.Name AirportFrom,att.CountryTo,att.CityTo,att.AirportTo
 from Clients c join TicketBookingInfo tbi on  c.Client_id=tbi.ClientID 
 join Tickets t on tbi.TicketID=t.TicketId 
 join Flights f on t.FlightID=f.FlightID 
 join Airports af on f.AirportFrom=af.AirportID 
 join (Select distinct f. FlightID ,at.Country CountryTo,at.City CityTo,at.Name AirportTo 
  from TicketBookingInfo tbi 
  join Tickets t on tbi.TicketID=t.TicketId 
  join Flights f on t.FlightID=f.FlightID 
  join Airports at on f.AirportTo=at.AirportID)  att 
  on att.FlightID= f.FlightID
 where tbi.ClientID=@ClientID)



