-- Clear existing data to prevent duplication
TRUNCATE TABLE Categories RESTART IDENTITY CASCADE;

-- Mock Data for Categories (Hamster Shop)
INSERT INTO Categories (category_id, category_name) VALUES
(1, 'Hamster food'),
(2, 'Hamster Equipment');
