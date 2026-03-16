-- Clear existing data to prevent duplication
TRUNCATE TABLE orders RESTART IDENTITY CASCADE;

INSERT INTO orders (orderID,customerID,orderItem,productID,quality,soldPerPiece,totalSold) VALUES
(1, 1, 1, 3, 3, 129, 387),
(2, 1, 2, 6, 1, 120, 120);