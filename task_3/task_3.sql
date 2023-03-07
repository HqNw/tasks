CREATE DATABASE IF NOT EXISTS market;

CREATE TABLE IF NOT EXISTS Customers (
    ID int NOT NULL PRIMARY KEY,
    customerName varchar(255) NOT NULL,
    country varchar(255) DEFAULT 'USA' 
    );

CREATE TABLE IF NOT EXISTS Orders (
    ID int NOT NULL PRIMARY KEY,
    orderNumber int NOT NULL,
    status varchar(255)
    );

CREATE TABLE IF NOT EXISTS Produt (
    ID int NOT NULL PRIMARY KEY,
    productName varchar(255) NOT NULL,
    productLine varchar(255) NOT NULL
    );

ALTER TABLE Orders
ADD FOREIGN KEY Orders(ID) REFERENCES  Customers(ID);

ALTER TABLE Produt
ADD FOREIGN KEY Produt (ID) REFERENCES  Orders(ID);