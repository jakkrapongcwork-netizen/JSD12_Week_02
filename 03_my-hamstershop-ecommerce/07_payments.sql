-- Clear existing data to prevent duplication
TRUNCATE TABLE payments RESTART IDENTITY CASCADE;

INSERT INTO payments (paymentID,paymentDate,amount,paymentStatus) VALUES
(1, 12/03/2026, 507, 'PAID');