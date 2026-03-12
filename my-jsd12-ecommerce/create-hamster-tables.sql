-- 1. Create Categories Table
CREATE TABLE Categories (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL UNIQUE
);

-- 2. Create Customers Table
CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    gender VARCHAR(20),
    age INTEGER,
    address TEXT,
    email VARCHAR(255) UNIQUE,
    phone VARCHAR(20)
);

-- 3. Create Products Table
CREATE TABLE Products (
    product_id SERIAL PRIMARY KEY,
    category_id INTEGER REFERENCES Categories(category_id),
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
    stock_quantity INTEGER NOT NULL DEFAULT 0,
);

-- 4. Create Inventory Table
CREATE TABLE Inventory (
    inventory_id SERIAL PRIMARY KEY,
    product_id INTEGER REFERENCES Products(product_id),
    stock_quantity INTEGER NOT NULL DEFAULT 0,
    location VARCHAR(255),
    last_updated TIMESTAMP DEFAULT NOW()
);

-- 5. Create Orders Table
CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES Customers(customer_id),
    product_id INTEGER REFERENCES Products(product_id), -- กรณีสั่ง 1 ชิ้นหลักตามแผนภาพ
    order_date TIMESTAMP DEFAULT NOW(),
    order_amount INTEGER NOT NULL DEFAULT 1,
    total_price DECIMAL(10, 2) NOT NULL,
    shipping_address TEXT
);

-- 6. Create Payments Table
CREATE TABLE Payments (
    payment_id SERIAL PRIMARY KEY,
    order_id INTEGER REFERENCES Orders(order_id),
    payment_method VARCHAR(50),
    payment_date TIMESTAMP DEFAULT NOW(),
    amount DECIMAL(10, 2) NOT NULL,
    payment_status VARCHAR(50) DEFAULT 'Pending'
);

-- 7. Create Transfers Table
CREATE TABLE Transfers (
    transfer_id SERIAL PRIMARY KEY,
    payment_id INTEGER REFERENCES Payments(payment_id),
    transfer_time TIMESTAMP DEFAULT NOW(),
    transfer_amount DECIMAL(10, 2) NOT NULL,
    verified_status BOOLEAN DEFAULT FALSE
);

-- 8. Create Comments Table
CREATE TABLE Comments (
    comment_id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES Customers(customer_id),
    product_id INTEGER REFERENCES Products(product_id),
    rating INTEGER CHECK (rating >= 1 AND rating <= 5),
    comment_text TEXT,
    comment_date TIMESTAMP DEFAULT NOW(),
    status VARCHAR(50) DEFAULT 'Active'
);
