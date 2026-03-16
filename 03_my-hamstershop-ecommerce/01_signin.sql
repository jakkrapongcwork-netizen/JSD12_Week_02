-- Clear existing data to prevent duplication
TRUNCATE TABLE Signin RESTART IDENTITY CASCADE;

-- Mock Data for Categories (Hamster Shop)
INSERT INTO Signin (signinID,userName,passWord,firstName,lastName,grender,age,address,email,phone) VALUES
(1, 'Usename01','1234','Customer01','AAA','Men',27,'Bangkok','usename01@mail.com',001-000-0000),
(2, 'Usename02','1235','Customer02','BBB','Womwn',30,'Phuket','usename02@mail.com',002-000-0000);