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
    COUNT(*)
FROM
    SuperMarketSale;

SELECT 
    product_line, SUM(sales) AS total_Sales
FROM
    SuperMarketSale
GROUP BY product_line
ORDER BY total_Sales DESC;

SELECT 
    city, round(AVG(rating), 2) AS Average_Rating
FROM
    SuperMarketSale
GROUP BY city
ORDER BY Average_Rating DESC;

SELECT 
    Payment, COUNT(*) AS top_Payment_Methods
FROM
    SuperMarketSale
GROUP BY Payment
ORDER BY top_Payment_Methods DESC
LIMIT 3;

select gender, sum(sales) from SuperMarketSale
group by gender;

SELECT 
    Product_line, ROUND(AVG(quantity), 2) AS Average_Quantity
FROM
    SuperMarketSale
GROUP BY Product_line
ORDER BY Average_Quantity DESC;

select date, sum(Sales) as Total_Sales from SuperMarketSale
group by date order by Total_Sales Desc;

CREATE VIEW Sale_Summary AS
    SELECT 
        branch, city, SUM(sales) AS total_Sales
    FROM
        SuperMarketSale
    GROUP BY branch , city;
