DROP TABLE IF EXISTS Albums;
DROP TABLE IF EXISTS Band;
DROP TABLE IF EXISTS Songs;
DROP TABLE IF EXISTS Instruments;
DROP TABLE IF EXISTS Performance;
DROP TABLE IF EXISTS Tracklists;
DROP TABLE IF EXISTS Vocals;

CREATE TABLE Albums (
    AId INT PRIMARY KEY,  
    Title VARCHAR(100),
    Year INT,
    Label VARCHAR(100),
    Type VARCHAR(20)
);

CREATE TABLE Band (
    Id INT PRIMARY KEY,  
    Firstname VARCHAR(50),
    Lastname VARCHAR(50)
);

CREATE TABLE Songs (
    SongId INT PRIMARY KEY, 
    Title VARCHAR(100)
);

CREATE TABLE Instruments (
    SongId INT,
    BandmateId INT,
    Instrument VARCHAR(50),
    PRIMARY KEY (SongId, BandmateId, Instrument),
    FOREIGN KEY (SongId) REFERENCES Songs(SongId), 
    FOREIGN KEY (BandmateId) REFERENCES Band(Id)
);

CREATE TABLE Performance (
    SongId INT,
    Bandmate INT,
    StagePosition VARCHAR(20),
    PRIMARY KEY (SongId, Bandmate), 
    FOREIGN KEY (SongId) REFERENCES Songs(SongId),  
    FOREIGN KEY (Bandmate) REFERENCES Band(Id)  
);

CREATE TABLE Tracklists (
    AlbumId INT,
    Position INT,
    SongId INT,
    PRIMARY KEY (AlbumId, Position),  
    FOREIGN KEY (AlbumId) REFERENCES Albums(AId),  
    FOREIGN KEY (SongId) REFERENCES Songs(SongId)  
);

CREATE TABLE Vocals (
    SongId INT,
    Bandmate INT,
    Type VARCHAR(20),
    PRIMARY KEY (SongId, Bandmate), 
    FOREIGN KEY (SongId) REFERENCES Songs(SongId),  
    FOREIGN KEY (Bandmate) REFERENCES Band(Id)  
);









