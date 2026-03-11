-- Clear existing data to prevent duplication
TRUNCATE TABLE Suppliers RESTART IDENTITY CASCADE; -- Not basic / ทุกครั้งที่สั่ง run ไฟล์นี้ จะไม่มี duplication จะไม่ทำซ้ำข้อมูล แต่ลบ ข้อมูลเก่าแล้วเริ่มใส่ข้อมูลใหม่ or ข้อมูลเดม

-- Mock Data for Suppliers
INSERT INTO Suppliers (supplier_id, name, contact_person, phone_number) VALUES -- เพิ่มค่าในตาราง Suppliers Cีolumn เหล่านี้
(1, 'Patty''s Premium Meats', 'Patty Smith', '555-0101'),
(2, 'The Bun Barn', 'Brad Breadson', '555-0102'),
(3, 'Freshest Farm Produce', 'Frank Farmer', '555-0103');