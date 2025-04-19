DROP DATABASE ShopDB;
CREATE DATABASE ShopDB; 
USE ShopDB; 

-- Create a table to store countries 
CREATE TABLE Countries (
    ID INT,
    Name VARCHAR(50),
    PRIMARY KEY (ID)
) ENGINE=InnoDB;

-- Таблиця для кешування GeoIP-даних (ENGINE=MEMORY)
CREATE TABLE GeoIPCache (
    ID INT,
    IPRange VARCHAR(50),
    CountryID INT
) ENGINE=MEMORY;

-- Таблиця для описів продуктів для різних країн (ENGINE=MyISAM)
CREATE TABLE ProductDescription (
    ID INT,
    Description TEXT,
    ProductID INT,
    CountryID INT
) ENGINE=MyISAM;

-- Таблиця для логів (ENGINE=BLACKHOLE)
CREATE TABLE Logs (
    ID INT,
    Timestamp DATETIME,
    Message TEXT
) ENGINE=BLACKHOLE;

-- Таблиця для звітності, яку буде обробляти інша система (ENGINE=CSV)
CREATE TABLE ProductReporting (
    Date DATE,
    ProductName CHAR(30),
    Orders INT
) ENGINE=CSV;


