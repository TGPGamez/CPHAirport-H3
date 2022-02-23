CREATE TABLE Airport(
	IATA VARCHAR(4) NOT NULL,
	Name VARCHAR(60) NOT NULL,
	Country VARCHAR(60) NOT NULL,
	PRIMARY KEY(IATA)
);

CREATE TABLE Airline(
	IATA VARCHAR(4) NOT NULL,
	Name VARCHAR(60) NOT NULL,
	PRIMARY KEY(IATA)
);

CREATE TABLE Flight_Route(
	FromIATA VARCHAR(4) NOT NULL,
	DestinationIATA VARCHAR(4) NOT NULL,
	ID INTEGER IDENTITY(1,1) UNIQUE NOT NULL,

	PRIMARY KEY(FromIATA, DestinationIATA),
	
);


CREATE TABLE FlightRoute_Airline_Operates(
	AirlineIATA VARCHAR(4) NOT NULL,
	FlightID INTEGER NOT NULL

	PRIMARY KEY(AirlineIATA, FlightID),
	FOREIGN KEY(AirlineIATA) REFERENCES Airline(IATA),
	FOREIGN KEY(FlightID) REFERENCES Flight_Route(ID)
);

CREATE TABLE FlightRoute_Airline_Owns(
	AirlineIATA VARCHAR(4) NOT NULL,
	FlightID INTEGER NOT NULL

	PRIMARY KEY(AirlineIATA, FlightID),
	FOREIGN KEY(AirlineIATA) REFERENCES Airline(IATA),
	FOREIGN KEY(FlightID) REFERENCES Flight_Route(ID)
);


INSERT INTO Airport(IATA, Name, Country) VALUES ('CPH', 'København', 'Denmark');
INSERT INTO Airport(IATA, Name, Country) VALUES ('LAX', 'Los Angeles International Airport', 'USA');
INSERT INTO Airport(IATA, Name, Country) VALUES ('LHR', 'Heathrow', 'United Kingdom');
INSERT INTO Airport(IATA, Name, Country) VALUES ('AAL', 'Aalborg', 'Denmark');

INSERT INTO Airline(IATA, Name) VALUES ('QR', 'Qatar Airlines');
INSERT INTO Airline(IATA, Name) VALUES ('SQ', 'Singapore Airlines');
INSERT INTO Airline(IATA, Name) VALUES ('NH', 'Ana All Nippon Airlines');
INSERT INTO Airline(IATA, Name) VALUES ('CX', 'Cathay Pacific Airlines');
INSERT INTO Airline(IATA, Name) VALUES ('EK', 'Emirates');
INSERT INTO Airline(IATA, Name) VALUES ('SA', 'SAS');
INSERT INTO Airline(IATA, Name) VALUES ('NZ', 'Air New Zealand');


INSERT INTO Flight_Route(FromIATA, DestinationIATA) VALUES('CPH', 'LHR');
INSERT INTO Flight_Route(FromIATA, DestinationIATA) VALUES('CPH', 'AAL');
INSERT INTO Flight_Route(FromIATA, DestinationIATA) VALUES('LHR', 'LAX');

INSERT INTO FlightRoute_Airline_Owns(AirlineIATA, FlightID) VALUES('SA', 1);
INSERT INTO FlightRoute_Airline_Operates(AirlineIATA, FlightID) VALUES('SA', 1);

INSERT INTO FlightRoute_Airline_Owns(AirlineIATA, FlightID) VALUES('SA', 2);
INSERT INTO FlightRoute_Airline_Operates(AirlineIATA, FlightID) VALUES('NZ', 2);

INSERT INTO FlightRoute_Airline_Owns(AirlineIATA, FlightID) VALUES('QR', 3);
INSERT INTO FlightRoute_Airline_Operates(AirlineIATA, FlightID) VALUES('EK', 3);

SELECT * FROM Flight_Route;

SELECT * FROM FlightRoute_Airline_Operates;

SELECT * FROM FlightRoute_Airline_Owns;