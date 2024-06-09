DROP DATABASE IF EXISTS dealership_db;

CREATE DATABASE IF NOT EXISTS dealership_db;
USE dealership_db;

CREATE TABLE Dealerships (
	Dealership_id int NOT NULL auto_INCREMENT,
	Name varchar(50) NOT NULL,
	Address varchar(50),
	Phone varchar(12),
    PRIMARY KEY (dealership_id)
 );

