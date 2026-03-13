-- Clear existing data to prevent duplication
TRUNCATE TABLE Products RESTART IDENTITY CASCADE;

-- Mock Data for Products (Hamster Shop)
INSERT INTO Products (product_id, category_id, product_name, price, stock_quantity) VALUES
(1, 1, 'Ready-made hamster food', 199.00, 50),
(2, 1, 'Roasted sunflower seeds', 10.00, 100),
(3, 1, 'Dried mealworms', 60.00, 30),
(4, 1, 'Taro fish snack', 30.00, 30),
(5, 1, 'Fruity hamster', 219.00, 50),
(6, 2, 'Hamster Cage', 1099.00, 10),
(7, 2, 'Hamster water bottle', 99.00, 20),
(8, 2, 'Hamster Wheel', 399.00, 15);
