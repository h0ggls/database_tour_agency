USE asd; 
CREATE TABLE Clients(
    Client_id int IDENTITY(1, 1)primary key,
    FirstName VARCHAR(64) not null,
    LastName VARCHAR(64) not null,
    MiddleName VARCHAR(64) not null,
    Passport VARCHAR(128) not NULL,
    Addres VARCHAR(128) not null,
    PhoneNumber VARCHAR(16) not null,
    eMail VARCHAR(64),
    BirthDate DATE not null, 

)
CREATE TABLE Airports(
    AirportID int IDENTITY(1, 1) primary key,
    Name VARCHAR(64) not NULL,
    Country VARCHAR(64) not NULL,
    City VARCHAR(64) not NULL,
)
CREATE TABLE Flights(
    FlightID int IDENTITY(1, 1) primary KEY,
    AirportFrom int not NULL,
    AirportTo int not NULL,
    DateOfDepart DATE not NULL,
    DateOfArrival DATE not NULL,
    CONSTRAINT airport_to FOREIGN key (AirportTo) REFERENCES Airports (AirportID),
    CONSTRAINT airport_from FOREIGN key (AirportFrom) REFERENCES Airports (AirportID),
)
CREATE TABLE TripSold(
    TripID int IDENTITY(1, 1) PRIMARY key,
    People VARCHAR (128) not null,
    TotalPrice money ,
    DateOfBooking date not null,
    FlightTo int,
    FlightFrom int,
    CONSTRAINT flight_to FOREIGN key (FlightTo) REFERENCES Flights (FlightID),
    CONSTRAINT flight_from FOREIGN key (FlightFrom) REFERENCES Flights (FlightID),
)
CREATE TABLE Tickets(
    TicketID int IDENTITY(1, 1) primary key,
    FlightID int not null,
    SeatNumber VARCHAR(32) not null,
    Type VARCHAR(12) not null,
    Price money not null,
    BookingStatus VARCHAR(32) not null,
    HandLuggageKG FLOAT not NULL,
    LuggageKG FLOAT not null,
    CONSTRAINT flight_id FOREIGN key (FlightID) REFERENCES Flights (FlightID)
    on delete cascade
    on update cascade,
)
CREATE TABLE TicketBookingInfo(
   ClientID int not null,
   TripID int not null,
   TicketID int not null,
   PRIMARY KEY(ClientID, TripID, TicketID),
   CONSTRAINT Client_id FOREIGN KEY (ClientID) REFERENCES Clients (Client_id)
   on delete cascade
   on update cascade,
   CONSTRAINT Trip_id FOREIGN KEY (TripID) REFERENCES TripSold (TripID)
   on delete cascade
   on update cascade,
   CONSTRAINT Ticket_id FOREIGN KEY (TicketID) REFERENCES Tickets (TicketID),
)
CREATE TABLE Hotels(
    HotelId int IDENTITY(1, 1) PRIMARY KEY,
    Name VARCHAR(64) NOT NULL,
    Rating VARCHAR(10) not null,
    Country VARCHAR(32) NOT NULL,
    City VARCHAR(32) NOT NULL,
    ClosesAirport int not null,
    CONSTRAINT closes_airport FOREIGN KEY(ClosesAirport) REFERENCES Airports (AirportID)
    on delete cascade
    on update cascade,

)
CREATE TABLE RoomTypes(
    TypeId int IDENTITY(1, 1) PRIMARY KEY,
    RoomType VARCHAR(32) not null,
    People VARCHAR(128) not null,
)
CREATE TABLE Rooms(
    RoomId int IDENTITY(1, 1) PRIMARY KEY,
    HotelId int not null,
    TypeId int not null,
    PriceNight money not null,
    Number VARCHAR(32) not null,
    CONSTRAINT hotel_id FOREIGN KEY (HotelId) REFERENCES Hotels (HotelId)
    on delete cascade
    on update cascade,
    CONSTRAINT type_id FOREIGN KEY (TypeId) REFERENCES RoomTypes (TypeId)
    on delete cascade
    on update cascade,
)
CREATE TABLE RoomBooking(
    RoomBookId int IDENTITY(1, 1) PRIMARY KEY,
    RoomID int not null,
    BookingStart date not null,
    BoookingFinish date not null,
    Days FLOAT not null,
    CONSTRAINT room_id FOREIGN KEY (RoomID) REFERENCES Rooms (RoomId)
    on delete cascade
    on update cascade,
)
CREATE TABLE RoombookingInfo(
    RoomBookId int not null,
    TripID int NOT NULL,
    PRIMARY KEY(RoomBookId,TripID),
    CONSTRAINT room_book_id FOREIGN KEY (RoomBookId) REFERENCES RoomBooking (RoomBookId)
    on delete cascade
    on update cascade,
    CONSTRAINT trip__id FOREIGN KEY (TripID) REFERENCES TripSold (TripID)
    on delete cascade
    on update cascade,
)
