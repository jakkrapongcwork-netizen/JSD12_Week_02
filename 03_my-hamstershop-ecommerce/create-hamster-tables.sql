-- 1. Create Signin Table
CREATE TABLE Signin (
    signinID SERIAL PRIMARY KEY, -- NEW
    userName VARCHAR(100) NOT NULL,
    passWord VARCHAR(100) NOT NULL,
    firstName VARCHAR(100) NOT NULL,
    lastName VARCHAR(100) NOT NULL,
    grender VARCHAR(20) NOT NULL,
    age INTEGER,
    address TEXT,
    email VARCHAR(255) UNIQUE,
    phone VARCHAR(20) 
);

-- 2. Create Login Table
CREATE TABLE Login (
    customerID SERIAL PRIMARY KEY,
    signinID INTEGER REFERENCES Signin(signinID) -- NEW
);

-- 3. Create Categories Table
CREATE TABLE Categories (
    categoryID SERIAL PRIMARY KEY,
    categoryName VARCHAR(100) NOT NULL UNIQUE
);

-- 04. Create Products Table
CREATE TABLE Products (
    productID SERIAL PRIMARY KEY,
    categoryID INTEGER REFERENCES Categories(categoryID),
    productName VARCHAR(255) NOT NULL UNIQUE,
    buyPerPiece DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
    inventory DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
    cost DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
    supplier VARCHAR(255) NOT NULL
);

-- 5. Create Orders Table
CREATE TABLE Orders (
    orderID SERIAL PRIMARY KEY,
    customerID INTEGER REFERENCES Login(customerID),
    orderItem DECIMAL(10) NOT NULL, -- true?
    productID INTEGER REFERENCES Products(productID),
    quality DECIMAL(10) NOT NULL, -- true?
    soldPerPiece DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
    totalSold DECIMAL(10, 2) NOT NULL DEFAULT 0.00
);

-- 6. Create Inventories Table
CREATE TABLE Inventories (
    inventoryID SERIAL PRIMARY KEY,
    productID INTEGER REFERENCES Products(productID),
    inventored DECIMAL(10) NOT NULL
);

-- 00. Create Cart Table
-- CREATE TABLE Carts (
--     cartID SERIAL PRIMARY KEY,
--     orderID INTEGER REFERENCES Orders(orderID)
-- );

-- 7. Create Payment Table
CREATE TABLE Payments (
    paymentID SERIAL PRIMARY KEY,
    cartID INTEGER REFERENCES Carts(cartID),
    paymentDate VARCHAR(255),
    amount DECIMAL(10, 2) NOT NULL,
    paymentStatus VARCHAR(50)
);

-- 8. Create Transfer Table
CREATE TABLE Transfers (
    transferID SERIAL PRIMARY KEY,
    paymentID INTEGER REFERENCES Payments(paymentId),
    status VARCHAR(50)
);

-- 9. Create Comment Table
CREATE TABLE Comments (
    commentID SERIAL PRIMARY KEY,
    customerID INTEGER REFERENCES login(customerID),
    transferID INTEGER REFERENCES Transfers(transferId),
    rating DECIMAL(1) NOT NULL,
    commentText VARCHAR(255),
    commentDate VARCHAR(255)
);
