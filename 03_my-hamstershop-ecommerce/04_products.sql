-- Clear existing data to prevent duplication
TRUNCATE TABLE Products RESTART IDENTITY CASCADE;

-- Mock Data for Products (Hamster Shop)
INSERT INTO Products (productID,categoryID,productName,buyPerPiece,inventory,cost,supplier) VALUES
(1, 1, 'Ready-made hamster food', 120.00, 100, 12000, 'Supplier01'),
(2, 1, 'Roasted sunflower seeds', 9.00, 100, 900, 'Supplier02'),
(3, 1, 'Dried mealworms', 65.00, 100, 650, 'Supplier02'),
(4, 1, 'Taro fish snack', 55.00, 100, 550, 'Supplier02'),
(5, 1, 'Fruity hamster', 130.00, 100, 13000, 'Supplier01'),
(6, 2, 'Hamster Cage', 850.00, 10, 8500, 'Supplier03'),
(7, 2, 'Hamster water bottle', 60.00, 30, 1800, 'Supplier03'),
(8, 2, 'Hamster Wheel', 200.00, 10, 2000, 'Supplier02');
