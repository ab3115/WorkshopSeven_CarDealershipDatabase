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
	PRIMARY KEY (vin)
);

CREATE TABLE Inventory (
	 dealership_id int,
	 vin varchar(17)
);

CREATE TABLE Sales_Contracts (
	sales_id int NOT NULL auto_increment,
	contract_date int NOT NULL,
    customer_name varchar(255) NOT NULL,
    customer_email varchar(255) NOT NULL,
    vin varchar(17),
    finance_option varchar(12) NOT NULL,
    total_price decimal(10, 2) NOT NULL,
    monthly_payment decimal(10, 2) NOT NULL,
	PRIMARY KEY (sales_id)
);

CREATE TABLE Lease_Contracts (
	lease_id int NOT NULL auto_increment,
	contract_date int NOT NULL,
    customer_name varchar(255) NOT NULL,
    customer_email varchar(255) NOT NULL,
    vin int,
    lease_end_value decimal(10,2) NOT NULL,
	total_price decimal(10, 2) NOT NULL,
    monthly_payment decimal(10, 2) NOT NULL,
    PRIMARY KEY (lease_id)
);
