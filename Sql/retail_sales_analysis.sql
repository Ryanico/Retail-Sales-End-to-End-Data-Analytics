SELECT *
FROM retail_sales;

-- What is the total revenue
SELECT SUM(`Total Spent`) AS total_revenue
FROM retail_sales;

-- What is the average transaction value
SELECT AVG(`Total Spent`) avg_transaction
FROM retail_sales;

-- Which month generated the highest sales
SELECT SUBSTRING(`Transaction Date`, 1, 7) AS `Month`, SUM(`Total Spent`) AS Sales
FROM retail_sales
GROUP BY `Month`
ORDER BY Sales DESC;

-- Which day generated the most revenue
SELECT `Transaction Date`, SUM(`Total Spent`) AS Daily_revenue
FROM retail_sales
GROUP BY `Transaction Date`
ORDER BY Daily_revenue DESC LIMIT 5
;

-- Which categories generate the most revenue
SELECT Category, SUM(`Total Spent`) AS Product_revenue
FROM retail_sales
GROUP BY Category
ORDER BY Products_sale DESC;

-- Which category has the highest average purchase value
SELECT Category, AVG(`Total Spent`) AS Avg_purchase
FROM retail_sales
GROUP BY Category
ORDER BY avg_purchase DESC;

-- Who are the top 10 customers
SELECT `Customer ID`, SUM(`Total Spent`) AS Customer_spend
FROM retail_sales
GROUP BY `Customer ID`
ORDER BY Customer_spend DESC;

-- Average spending per customer
SELECT `Customer ID`, AVG(`Total Spent`) AS AVG_customer_spend
FROM retail_sales
GROUP BY `Customer ID`
ORDER BY AVG_customer_spend DESC;

-- Monthly sales trend
SELECT SUBSTRING(`Transaction Date`, 1, 7) AS `Month`, SUM(`Total Spent`) AS Monthly_sales
FROM retail_sales
GROUP BY `Month`
ORDER BY `Month`;

-- Month-over-Month Growth
WITH monthly_sales AS
(SELECT SUBSTRING(`Transaction Date`, 1, 7) AS `Month`, SUM(`Total Spent`) AS Sales_monthly
FROM retail_sales
GROUP BY `Month`
)
SELECT `Month`,
Sales_monthly,
LAG(Sales_monthly) OVER (ORDER BY `Month`) AS Previous_month_sales,
(
(Sales_monthly - LAG(Sales_monthly) OVER(ORDER BY `Month`))
/ LAG(Sales_monthly) OVER(ORDER BY `Month`)
) * 100 AS MoM_growth_percentage
FROM monthly_sales;

-- Rolling 3-month sales average
WITH monthly_sales AS (
    SELECT
        YEAR(`Transaction Date`) AS Year,
        MONTH(`Transaction Date`) AS Month,
        SUM(`Total Spent`) AS Total_Sales
    FROM retail_sales
    GROUP BY
        YEAR(`Transaction Date`),
        MONTH(`Transaction Date`)
)

SELECT
    Year,
    Month,
    Total_Sales,
    AVG(Total_Sales) OVER (
        ORDER BY Year, Month
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS Rolling_3_Month_Average
FROM monthly_sales;

-- Which payment method generates the most revenue
SELECT `Payment Method`, SUM(`Total Spent`) AS Total_sales
FROM retail_sales
GROUP BY `Payment Method`
ORDER BY `Payment Method`;

-- Online vs In-store sales
SELECT Location, SUM(`Transaction Date`) AS Total_sales
FROM retail_sales
GROUP BY Location
ORDER BY Total_sales DESC;















