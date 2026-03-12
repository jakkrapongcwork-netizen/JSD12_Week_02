-- SELECT * FROM suppliers -- SELECT เลือก * Column ทั้งหมด FROM จากตาราง

-- 1.
-- SELECT * FROM staff

-- 2.
-- SELECT * FROM menuitems
-- WHERE MenuItems.category = 'Burger'

-- 3.
-- SELECT * FROM menuitems
-- order by price DESC

-- 4.
-- SELECT name, price FROM MenuItems ORDER BY price ASC LIMIT 3;

-- 5.
-- SELECT Ingredients.name
-- FROM Ingredients
-- JOIN Suppliers ON Ingredients.supplier_id = Suppliers.supplier_id
-- WHERE Suppliers.name = 'Patty''s Premium Meats';

-- 6.
-- SELECT * FROM Orders WHERE staff_id = 1;

-- SELECT
--     s.first_name,
--     s.last_name,
--     COUNT(o.order_id) AS order_count
-- FROM Staff s
-- JOIN Orders o ON s.staff_id = o.staff_id
-- GROUP BY s.staff_id
-- ORDER BY order_count DESC;


-- 7. ยังไม่เข้าใจ
-- SELECT
--     Staff.first_name,
--     Staff.last_name,
--     COUNT(Orders.order_id) AS order_count
-- FROM Staff
-- JOIN Orders ON Staff.staff_id = Orders.staff_id
-- GROUP BY Staff.staff_id
-- ORDER BY order_count DESC;
 
-- 8. ยังไม่เข้าใจ
-- SELECT
--     DATE(order_date) AS sales_day,
--     SUM(total_price) AS daily_revenue
-- FROM Orders
-- GROUP BY sales_day
-- ORDER BY sales_day;

-- 9.
-- SELECT
--     mi.name,
--     SUM(oi.quantity) AS total_sold
-- FROM OrderItems oi
-- JOIN MenuItems mi ON oi.item_id = mi.item_id
-- GROUP BY mi.name
-- ORDER BY total_sold DESC
-- LIMIT 1;

-- 10.
-- SELECT
--     i.name,
--     ri.quantity_needed,
--     i.unit
-- FROM RecipeItems ri
-- JOIN MenuItems mi ON ri.item_id = mi.item_id
-- JOIN Ingredients i ON ri.ingredient_id = i.ingredient_id
-- WHERE mi.name = 'Bacon Cheeseburger';
