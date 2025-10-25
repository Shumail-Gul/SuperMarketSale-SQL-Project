             ** Supermarket Sales SQL Project

This Project Analysis SuperMarket sales data from **Kaggle SupermarketSales Dataset** using
**MySql**.It explores customer behavior, top products, payment methods, and city-wise performance.


**Dataset Source:** [Kaggle - Supermarket Sales Dataset](https://www.kaggle.com/datasets/aungpyaeap/supermarket-sales)
-------------------------------- 
** Table SuperMarketSale 
--------------------------------
| Column Name   | Data Type   | Description            |
| ------------- | ----------- | ---------------------- |
| Invoice_id    | VARCHAR(15) | Unique invoice ID      |
| Branch        | VARCHAR(10) | Branch code            |
| City          | VARCHAR(10) | City name              |
| Customer_Type | VARCHAR(10) | Member / Normal        |
| Gender        | VARCHAR(10) | Male / Female          |
| Product_Line  | VARCHAR(25) | Product category       |
| Unit_Price    | DECIMAL     | Price per item         |
| Quantity      | INT         | Units sold             |
| Sales         | DECIMAL     | Total sales amount     |
| Date          | DATE        | Transaction date       |
| Payment       | VARCHAR(15) | Payment method         |
| Rating        | DECIMAL     | Customer rating (1–10) |

--------------------------------
--------------------------------
   ## Basic Queries ##
--------------------------------
-- total sales per productLine
-- average rating per city
-- top 3 payment methods
-- customer behaviour
-- top products
-- payment methods
-- city wise performance
-- total sales per gender
-- sales of Average Quantity of Product line
-- sales per day

--------------------------------
   ## Advanced Queries ##
--------------------------------
-- Sales Per Month and Averge Monthly Sales
-- Top three Selling Product in each City
-- Most Profitable Day of the Week
-- City with Highest Average Rating per Product Line
-- Customer Royalty

--------------------------------
   ## Views ##
--------------------------------
-- Sale Summary View



