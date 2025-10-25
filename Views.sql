CREATE VIEW Sale_Summary AS
    SELECT 
        branch, city, SUM(sales) AS total_Sales
    FROM
        SuperMarketSale
    GROUP BY branch , city;
