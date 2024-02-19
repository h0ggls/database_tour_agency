create or Alter view vClientContacts (Surname,Name,Email,Phone, TripID,Price)
as select distinct c.LastName,c.FirstName,c.Email,c.PhoneNumber, ts.TripID, ts.TotalPrice
from Clients c 
left join TicketBookingInfo tbi on c.Client_id =tbi.ClientID 
join TripSold ts on tbi.TripID =ts.TripID
