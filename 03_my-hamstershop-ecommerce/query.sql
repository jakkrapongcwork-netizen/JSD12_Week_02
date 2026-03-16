DROP TABLE IF EXISTS Comments CASCADE;
DROP TABLE IF EXISTS transfers CASCADE;
DROP TABLE IF EXISTS Payments CASCADE;
DROP TABLE IF EXISTS inventories CASCADE;
DROP TABLE IF EXISTS Orders CASCADE;
DROP TABLE IF EXISTS Products CASCADE;
DROP TABLE IF EXISTS Categories CASCADE;
DROP TABLE IF EXISTS Login CASCADE;
DROP TABLE IF EXISTS Signin CASCADE;

SELECT * FROM Products
WHERE products.supplier = 'supplier01'

-- CREATE TABLE supplier03_summary AS
--     SELECT
--         supplier,
--         SUM(cost) AS total_cost
--     FROM Products
--     WHERE supplier = 'Supplier03'
--     GROUP BY supplier;

-- SELECT * FROM supplier03_summary;