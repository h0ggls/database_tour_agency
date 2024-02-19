create or Alter view vClosestAirport(HotelName,HotelCity,AirportName,AirportCity)
as 
select h.Name,h.City,a.Name,a.City from Hotels h 
join Airports a on h.ClosesAirport=a.AirportID

