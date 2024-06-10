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
 
 CREATE TABLE Vehicles (
	vin varchar(17) NOT NULL,
	year int NOT NULL,
	make_name varchar(30) NOT NULL,
	model_name varchar(30) NOT NULL,
	vehicle_type varchar(30) NOT NULL,
	vehicle_color varchar(30),
	odometer int NOT NULL,
	vehicle_price decimal(10,2) NOT NULL,
	sold varchar(3) NOT NULL,
	PRIMARY KEY (VIN)
);

CREATE TABLE Inventory (
	 Dealership_id int,
	 VIN varchar(17)
);
