-- Query 1 
-- SELECT * FROM dealerships;

-- Query 2 
-- SELECT i.dealership_id, v.*
	-- FROM vehicles AS v
   	-- JOIN inventory As i
	-- 		ON v.vin = i.vin
-- 			WHERE Dealership_id = 1;

-- Query 3 
--  SELECT *
-- 		FROM vehicles
-- 		WHERE vin = '1HGCM82633A004352';

-- Query 4 - --
--  SELECT i.VIN, d.*
--  	FROM Dealerships AS d
-- 		JOIN Inventory AS i
-- 			ON d.Dealership_id = i.Dealership_id
-- 			WHERE i.VIN = 'JHMZE2H75BS001234';

-- Query 5 - --
 -- SELECT *
--  	FROM Dealerships
-- 	WHERE Dealership_id IN (SELECT Dealership_id
-- 			FROM Inventory
-- 			WHERE VIN IN (SELECT VIN
-- 							FROM Vehicles
-- 									WHERE Vehicle_Color LIKE 'Blue' 
-- 										AND Make_Name LIKE 'Toyota'
-- 										AND Model_Name LIKE 'Camry'));

-- - Query 6 - --
SELECT i.*, year, make_name, model_name, vehicle_type, vehicle_color, odometer, vehicle_price, sold
	FROM inventory AS i
    JOIN vehicles AS v
		ON i.VIN = v.VIN
		WHERE i.Dealership_id IN (SELECT Dealership_id
									FROM Inventory
									WHERE Dealership_id = 1
										AND (VIN IN (SELECT VIN
														FROM Sales_Contracts
														WHERE Contract_Date BETWEEN 20090000 AND 20250000)
															OR VIN IN (SELECT VIN
																		FROM Lease_Contracts
																		WHERE Contract_Date BETWEEN 20100000 AND 20250000)));
