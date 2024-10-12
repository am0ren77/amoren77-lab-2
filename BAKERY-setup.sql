DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS goods;
DROP TABLE IF EXISTS receipts;
DROP TABLE IF EXISTS items;


CREATE TABLE customers (
    CId INT PRIMARY KEY, 
    LastName VARCHAR(50),
    FirstName VARCHAR(50),
    UNIQUE (LastName, FirstName)  
);

CREATE TABLE goods (
    GId VARCHAR(20) PRIMARY KEY,  
    Flavor VARCHAR(50),
    Food VARCHAR(50),
    Price DECIMAL(5, 2),
    UNIQUE (Flavor, Food) 
);

CREATE TABLE receipts (
    RNumber INT PRIMARY KEY,
    SaleDate DATE,
    Customer INT,
    FOREIGN KEY (Customer) REFERENCES customers(CId)  
);

CREATE TABLE items (
    Receipt INT, 
    Ordinal INT,  
    Item VARCHAR(20) NOT NULL,
    PRIMARY KEY (Receipt, Ordinal),  
    FOREIGN KEY (Receipt) REFERENCES receipts(RNumber), 
    FOREIGN KEY (Item) REFERENCES goods(GId)  
);
