CREATE DATABASE IF NOT EXISTS SuperMarketSale;
USE SuperMarketSale;
CREATE TABLE SuperMarketSale (
    Invoice_id VARCHAR(15) PRIMARY KEY,
    Branch VARCHAR(10),
    City VARCHAR(10),
    Customer_Type VARCHAR(10),
    Gender VARCHAR(10),
    Product_line VARCHAR(25),
    Unit_Price DECIMAL(10 , 2 ),
    quantity INT,
    sales DECIMAL,
    Date DATE,
    Payment VARCHAR(15),
    Rating DECIMAL(3.1)
);
 
 SELECT 
*
FROM
    SuperMarketSale;

