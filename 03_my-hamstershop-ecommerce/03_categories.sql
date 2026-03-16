-- Clear existing data to prevent duplication
TRUNCATE TABLE Categories RESTART IDENTITY CASCADE;

-- Mock Data for Categories (Hamster Shop)
INSERT INTO Categories (categoryID, categoryName) VALUES
(1, 'Hamster food'),
(2, 'Hamster Equipment');