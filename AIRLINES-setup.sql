DROP TABLE IF EXISTS airlines;
DROP TABLE IF EXISTS airports;
DROP TABLE IF EXISTS flights;

CREATE TABLE airlines (
  Id INT PRIMARY KEY,
  Airline varchar(100),
  Abbreviation varchar(50),
  Country varchar(50),
  UNIQUE(Abbreviation)
);

CREATE TABLE airports (
    AirportCode VARCHAR(10) PRIMARY KEY,
    City VARCHAR(255),
    AirportName VARCHAR(255),
    Country VARCHAR(255),
    CountryAbbrev VARCHAR(10),
    UNIQUE(AirportCode)
);

CREATE TABLE flights (
    Airline INT,
    FlightNo INT,
    SourceAirport VARCHAR(10) NOT NULL,
    DestAirport VARCHAR(10) NOT NULL,
    PRIMARY KEY (Airline, FlightNo),
    CONSTRAINT fk_airline FOREIGN KEY (Airline) REFERENCES airlines(Id),
    CONSTRAINT fk_source_airport FOREIGN KEY (SourceAirport) REFERENCES airports(AirportCode),
    CONSTRAINT fk_dest_airport FOREIGN KEY (DestAirport) REFERENCES airports(AirportCode)
);