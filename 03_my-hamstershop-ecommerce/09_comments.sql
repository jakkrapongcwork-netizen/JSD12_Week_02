-- Clear existing data to prevent duplication
TRUNCATE TABLE comments RESTART IDENTITY CASCADE;

INSERT INTO comments (commentID,customerID,transferID,rating,commentText,commentDate) VALUES
(1, 1, 1, 5, 'Good!!!', 15/03/2026);