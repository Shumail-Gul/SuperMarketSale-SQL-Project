-- totalSales per productLine
SELECT 
    product_line, SUM(sales) AS total_Sales
FROM
    SuperMarketSale
GROUP BY product_line
ORDER BY total_Sales DESC;

-- Average Rating per City
SELECT 
    city, round(AVG(rating), 2) AS Average_Rating
FROM
    SuperMarketSale
GROUP BY city
ORDER BY Average_Rating DESC;

-- top 3 payment methods
SELECT 
    Payment, COUNT(*) AS top_Payment_Methods
FROM
    SuperMarketSale
GROUP BY Payment
ORDER BY top_Payment_Methods DESC
LIMIT 3;

-- total sales per gender
select gender, sum(sales) from SuperMarketSale
group by gender;

--  sales of Average Quantity of Product line
SELECT 
    Product_line, ROUND(AVG(quantity), 2) AS Average_Quantity
FROM
    SuperMarketSale
GROUP BY Product_line
ORDER BY Average_Quantity DESC;

-- sales per day
SELECT 
    date, SUM(Sales) AS Total_Sales
FROM
    SuperMarketSale
GROUP BY date
ORDER BY Total_Sales DESC;

--
select  *  from SuperMarketSale
where customer_type = 'Member' and product_Line = 'health and beauty';
