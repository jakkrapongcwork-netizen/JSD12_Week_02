-- Clear existing data to prevent duplication
TRUNCATE TABLE inventories RESTART IDENTITY CASCADE;
-- TRUNCATE TABLE inventories CASCADE;

INSERT INTO Inventories (inventoryID,productID,inventored) VALUES
(1, 1, 100),
(2, 2, 100),
(3, 3, 100),
(4, 4, 100),
(5, 5, 100),
(6, 6, 10),
(7, 7, 30),
(8, 8, 10);