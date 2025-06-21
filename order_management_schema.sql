
-- Create and select the database
CREATE DATABASE IF NOT EXISTS DBMS_Project;
USE DBMS_Project;

-- Create Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(30) NOT NULL,
    customer_address VARCHAR(30)
);

-- Create Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    order_date DATE NOT NULL,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Insert data into Customers table
INSERT INTO Customers (customer_id, customer_name, customer_address) VALUES
(101, 'Saili Gangurde', 'Shirdi'),
(102, 'Sherley Setia', 'Mumbai'),
(103, 'Sumita Turakane', 'Kopargaon'),
(104, 'Pranjal Hon', 'Kopargaon'),
(105, 'Palak Deshmukh', 'Yeola'),
(106, 'Arya Gandhi', 'Yeola'),
(107, 'Samruddhi Sonawane', 'Aandarsul'),
(108, 'Aarya Deshmukh', 'Kopargaon'),
(109, 'Dnyaneshwari Aher', 'Yeola'),
(110, 'Shruti Gangurde', 'Shirdi');

-- Insert data into Orders table
INSERT INTO Orders (order_id, order_date, customer_id) VALUES
(111, '2025-01-09', 101),
(112, '2025-02-08', 102),
(113, '2025-03-07', 103),
(114, '2025-04-06', 104),
(115, '2025-05-05', 105),
(116, '2025-06-04', 106),
(117, '2025-07-03', 107),
(118, '2025-08-02', 108),
(119, '2025-09-01', 109),
(120, '2025-01-09', 110);

-- JOIN query to retrieve customer and order details
SELECT 
    c.customer_id,
    c.customer_name,
    c.customer_address,
    o.order_id,
    o.order_date
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id;

-- Aggregate query: Count of customers per address
SELECT 
    customer_address, 
    COUNT(*) AS same_address 
FROM Customers 
GROUP BY customer_address;
