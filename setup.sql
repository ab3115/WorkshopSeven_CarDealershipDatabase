DROP DATABASE IF EXISTS dealership_db;

CREATE DATABASE IF NOT EXISTS dealership_db;
USE dealership_db;

CREATE TABLE Dealerships (
	dealership_id int NOT NULL auto_INCREMENT,
	name varchar(50) NOT NULL,
	address varchar(50),
	phone varchar(12),
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

INSERT INTO Dealerships	VALUES (null, 'Bay Ridge Auto-Mall', '119 5th Avenue', '800-888-8884');

INSERT INTO Vehicles VALUES
('1HGCM82633A004352', 1993, 'Ford', 'Explorer', 'SUV', 'Red', 525123, 995.00, 'NO'),
('2HGEJ6678WH542789', 1995, 'Toyota', 'Corolla', 'Sedan', 'Blue', 234523, 1500.00, 'NO'),
('3N1BC13E79L399654', 1998, 'Honda', 'Civic', 'Coupe', 'Black', 185000, 2200.00, 'YES'),
('4T1BE32K75U342762', 2000, 'Chevrolet', 'Malibu', 'Sedan', 'White', 140000, 1800.00, 'NO'),
('5FNYF4H53DB000001', 2002, 'Nissan', 'Altima', 'Sedan', 'Green', 215000, 2100.00, 'YES'),
('1FTFW1EF2EFC51957', 2005, 'Hyundai', 'Elantra', 'Sedan', 'Silver', 120000, 2500.00, 'NO'),
('JHMZE2H75BS001234', 2006, 'Ford', 'Mustang', 'Coupe', 'Red', 90000, 7000.00, 'YES'),
('WAUZZZ8V3LA005678', 2007, 'Toyota', 'Camry', 'Sedan', 'Blue', 195000, 3200.00, 'NO'),
('5UXWX9C57E0D10435', 2008, 'Honda', 'Accord', 'Sedan', 'Black', 145000, 5000.00, 'YES'),
('1G1BE5SM5H7200002', 2009, 'Chevrolet', 'Impala', 'Sedan', 'White', 175000, 4000.00, 'NO'),
('2GCEK19TX31543542', 2010, 'Nissan', 'Sentra', 'Sedan', 'Gray', 130000, 3500.00, 'YES');

INSERT INTO Inventory VALUES 
(1, '1HGCM82633A004352'),
(1, '2HGEJ6678WH542789'),
(1, '3N1BC13E79L399654'),
(1, '4T1BE32K75U342762'),
(1, '5FNYF4H53DB000001'),
(1, '1FTFW1EF2EFC51957'),
(1, 'JHMZE2H75BS001234'),
(1, 'WAUZZZ8V3LA005678'),
(1, '5UXWX9C57E0D10435'),
(1, '2GCEK19TX31543542');

INSERT INTO Sales_Contracts VALUES
(null, 20240615, 'Samantha Lee', 'slee@gmail.com', 72105, 'Leased', 14250.00, 230.75),
(null, 20240622, 'Robert Smith', 'rsmith@yahoo.com', 37846, 'Financed', 13500.00, 575.25),
(null, 20240701, 'Emily Johnson', 'ejohnson@hotmail.com', 10112, 'Not Financed', 9800.00, 0.00),
(null, 20240710, 'Michael Davis', 'mdavis@msn.com', 44901, 'Financed', 15800.00, 295.50),
(null, 20240718, 'Jennifer White', 'jwhite@gmail.com', 78901, 'Financed', 12000.00, 520.45),
(null, 20240726, 'Chris Brown', 'cbrown@yahoo.com', 12345, 'Not Financed', 8600.00, 0.00),
(null, 20240803, 'Kimberly Taylor', 'ktaylor@hotmail.com', 72105, 'Financed', 13450.00, 210.30),
(null, 20240811, 'Matthew Harris', 'mharris@gmail.com', 89012, 'Financed', 11800.00, 480.90);

INSERT INTO Lease_Contracts VALUES
(null, 20240615, 'Samantha Lee', 'slee@gmail.com', 72105, 9000.00, 15800.00, 295.50),
(null, 20240622, 'Robert Smith', 'rsmith@yahoo.com', 37846, 8200.00, 13200.00, 605.75),
(null, 20240701, 'Emily Johnson', 'ejohnson@hotmail.com', 10112, 7500.00, 9800.00, 0.00),
(null, 20240710, 'Michael Davis', 'mdavis@msn.com', 44901, 8800.00, 15000.00, 390.25),
(null, 20240718, 'Jennifer White', 'jwhite@gmail.com', 78901, 9200.00, 12000.00, 520.45),
(null, 20240726, 'Chris Brown', 'cbrown@yahoo.com', 12345, 7800.00, 8600.00, 0.00),
(null, 20240803, 'Kimberly Taylor', 'ktaylor@hotmail.com', 72105, 8900.00, 13450.00, 210.30),
(null, 20240811, 'Matthew Harris', 'mharris@gmail.com', 89012, 8600.00, 11800.00, 480.90);


