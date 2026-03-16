-- Clear existing data to prevent duplication
TRUNCATE TABLE transfers RESTART IDENTITY CASCADE;

INSERT INTO Transfers (transferID,paymentID,status) VALUES
(1, 1, 'SENT');