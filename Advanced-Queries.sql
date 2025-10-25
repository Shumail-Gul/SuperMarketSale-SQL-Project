-- Sales Per Month and Averge Monthly Sales
with Monthly_Sales as(
select
 date_format(date, '%Y %M') as month,
 sum(sales) as total_sales
from SuperMarketSale
group by month)
select 
month, 
total_sales,
round(avg(total_sales) over (), 2) as Avg_Monthly_Sales,
CASE
When total_Sales > Avg(Total_Sales) over () then 'Above Average'
else 'Below Average'
end as Performance
from
Monthly_Sales;


-- Top three Selling Product in each City
WITH RankedSales as( 
SELECT
 product_line,
 city,
 sum(Sales) as Total_Sales,
 Rank() over (Partition by City order by sum(Sales) Desc) as Rank_In_City
 from supermarketsale
 
 GROUP BY city, Product_line)
 Select * from RankedSales
 where Rank_In_City <= 3;
 
 -- Most Profitable Day of the Week
 SELECT 
    DAYNAME(Date) AS Day_name, SUM(Sales) AS total_Sales
FROM
    supermarketsale
GROUP BY Day_name
ORDER BY total_Sales DESC
LIMIT 1;

 
 -- Sales Per Day
 SELECT 
    date, SUM(sales) AS daily_sales
FROM
    supermarketsale
GROUP BY date
ORDER BY date;
 
 -- City with Highest Average Rating per Product Line
 WITH RankedCity As(
 select 
 product_line,
 city,
 round(avg(rating), 2) as Average_Rating,
 rank() over (PARTITION BY city order by avg(rating) DESC) as Rank_In_City
 from supermarketsale
 group by city, Product_line)
   select * from RankedCity
   Where rank_in_city = 1
   order by average_rating desc;
   
-- Customer Royalty
select 
customer_type,
count(invoice_id) as num_of_transactions,
sum(sales) as total_sales,
case 
when count(invoice_id) > 500 then 'Royal'
when count(invoice_id) between 350 and 500 then 'Regular'
else 'New'
end as Customer_Category
from supermarketsale
group by Customer_Type;

 
 




