DROP TABLE IF EXISTS Plays;
DROP TABLE IF EXISTS hamlet;
DROP TABLE IF EXISTS macbeth;
DROP TABLE IF EXISTS romeo_juliet;

CREATE TABLE Plays (
    play_id INT PRIMARY KEY,  
    play_title VARCHAR(100) UNIQUE 
);

CREATE TABLE hamlet (
    play_id INT NOT NULL, 
    act VARCHAR(50) NOT NULL, 
    scene VARCHAR(50) NOT NULL, 
    character_name VARCHAR(100) NOT NULL, 
    dialogue TEXT, 
    line_number INT,
    FOREIGN KEY (play_id) REFERENCES Plays(play_id) 
);

CREATE TABLE macbeth (
    play_id INT NOT NULL, 
    act VARCHAR(50) NOT NULL, 
    scene VARCHAR(50) NOT NULL, 
    character_name VARCHAR(100) NOT NULL, 
    dialogue TEXT, 
    line_number INT,
    FOREIGN KEY (play_id) REFERENCES Plays(play_id) 
);

CREATE TABLE romeo_juliet (
    play_id INT NOT NULL, 
    act VARCHAR(50) NOT NULL, 
    scene VARCHAR(50) NOT NULL, 
    character_name VARCHAR(100) NOT NULL, 
    dialogue TEXT, 
    line_number INT,
    FOREIGN KEY (play_id) REFERENCES Plays(play_id) 
);



