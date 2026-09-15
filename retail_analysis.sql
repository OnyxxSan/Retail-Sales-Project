
-- Retail Sales Analysis

SELECT TOP 10 *
FROM dbo.retail_sales_cleaned;

-- 1. Total Sales by category
SELECT
  product_category,
  SUM(total_amount) AS total_sales
FROM dbo.retail_sales_cleaned
GROUP BY product_category
ORDER BY total_sales DESC;

-- 2. Average transaction
SELECT
  AVG(total_amount) AS average_transaction
  FROM dbo.retail_sales_cleaned;

-- 3. Total number of transactions
SELECT
  COUNT(*) AS total_transactions
FROM dbo.retail_sales_cleaned;

-- 4. Sales by Gender
SELECT
  gender,
  SUM(total_amount) AS total_sales
  FROM dbo.retail_sales_cleaned
  GROUP BY gender
  ORDER BY total_sales DESC;

  -- 5. Sales by age group
  SELECT
    CASE
      WHEN age < 25 THEN '18-24'
      WHEN age < 35 THEN '25-34'
      WHEN age < 45 THEN '35-44'
      WHEN age < 55 THEN '45-54'
      ELSE '55+'
    END AS age_group,
    SUM(total_amount) AS total_sales
FROM dbo.retail_sales_cleaned
GROUP BY
  CASE
    WHEN age < 25 THEN '18-24'
    WHEN age < 35 THEN '25-34'
    WHEN age < 45 THEN '35-44'
    WHEN age < 55 THEN '45-54'
    ELSE '55+'
END
ORDER BY total_sales DESC;

SELECT TOP 10
 customer_id,
 SUM(total_amount) AS total_spent
FROM dbo.retail_sales_cleaned
GROUP BY customer_id
ORDER BY total_spent DESC;

-- 6. Monthly sales
SELECT
  YEAR(date) AS sales_year,
  MONTH(date) AS sales_month,
  SUM(total_amount) AS total_sales
FROM dbo.retail_sales_cleaned
GROUP BY
 YEAR(date),
 MONTH(date)
ORDER BY
 sales_year,
 sales_month;

 -- 7. Best selling Product categories
 SELECT 
    product_category,
    SUM(total_amount) AS total_sales,
    SUM(quantity) AS units_sold
FROM dbo.retail_sales_cleaned
GROUP BY product_category
ORDER BY total_sales DESC;

-- 9.Average order value by category
SELECT 
    product_category,
    COUNT(*) AS number_of_transactions,
    AVG(total_amount) AS average_transaction,
    SUM(total_amount) AS total_sales
FROM dbo.retail_sales_cleaned
GROUP BY product_category
ORDER BY average_transaction DESC;

-- 10. Sales by day of the week
SELECT
    DATENAME(WEEKDAY, date) AS day_of_week,
    COUNT(*) AS number_of_transactions,
    SUM(total_amount) AS total_sales,
    AVG(total_amount) AS average_transaction
FROM dbo.retail_sales_cleaned
GROUP BY DATENAME(WEEKDAY, date), DATEPART(WEEKDAY, date)
ORDER BY DATEPART(WEEKDAY, date);

--11. Sales by gender AND product category
SELECT
    gender,
    product_category,
    COUNT(*) AS number_of_transactions,
    SUM(total_amount) AS total_sales,
    AVG(total_amount) AS average_transaction
FROM dbo.retail_sales_cleaned
GROUP BY
    gender,
    product_category
ORDER BY
    gender,
    total_sales DESC;

-- 12. Revenue by quantity purchased
SELECT
    quantity,
    COUNT(*) AS number_of_transactions,
    SUM(total_amount) AS total_sales,
    AVG(total_amount) AS average_transaction
FROM dbo.retail_sales_cleaned
GROUP BY quantity
ORDER BY quantity;

-- 10. Top 10 Customers
SELECT TOP 10
    customer_id,
    COUNT(*) AS number_of_transactions,
    SUM(total_amount) AS total_spent,
    AVG(total_amount) AS average_transaction
FROM dbo.retail_sales_cleaned
GROUP BY customer_id
ORDER BY total_spent DESC;

-- 14. Highest value individual transactions
SELECT TOP 10
    transaction_id,
    date,
    customer_id,
    gender,
    age,
    product_category,
    quantity,
    price_per_unit,
    total_amount
FROM dbo.retail_sales_cleaned
ORDER BY total_amount DESC;

-- 15. Sales by Age group 2
SELECT
    CASE
        WHEN age < 20 THEN 'Under 20'
        WHEN age BETWEEN 20 AND 29 THEN '20-29'
        WHEN age BETWEEN 30 AND 39 THEN '30-39'
        WHEN age BETWEEN 40 AND 49 THEN '40-49'
        WHEN age BETWEEN 50 AND 59 THEN '50-59'
        ELSE '60+'
    END AS age_group,
    COUNT(*) AS number_of_transactions,
    SUM(total_amount) AS total_sales,
    AVG(total_amount) AS average_transaction
FROM dbo.retail_sales_cleaned
GROUP BY
    CASE
        WHEN age < 20 THEN 'Under 20'
        WHEN age BETWEEN 20 AND 29 THEN '20-29'
        WHEN age BETWEEN 30 AND 39 THEN '30-39'
        WHEN age BETWEEN 40 AND 49 THEN '40-49'
        WHEN age BETWEEN 50 AND 59 THEN '50-59'
        ELSE '60+'
    END
ORDER BY total_sales DESC;

-- 16. Sales by price range
SELECT
    CASE
        WHEN price_per_unit < 100 THEN 'Under $100'
        WHEN price_per_unit BETWEEN 100 AND 299.99 THEN '$100-$299'
        WHEN price_per_unit BETWEEN 300 AND 499.99 THEN '$300-$499'
        ELSE '$500+'
    END AS price_range,
    COUNT(*) AS number_of_transactions,
    SUM(quantity) AS units_sold,
    SUM(total_amount) AS total_sales,
    AVG(total_amount) AS average_transaction
FROM dbo.retail_sales_cleaned
GROUP BY
    CASE
        WHEN price_per_unit < 100 THEN 'Under $100'
        WHEN price_per_unit BETWEEN 100 AND 299.99 THEN '$100-$299'
        WHEN price_per_unit BETWEEN 300 AND 499.99 THEN '$300-$499'
        ELSE '$500+'
    END
ORDER BY total_sales DESC;


-- 17. Revenue contribution by category
SELECT
    product_category,
    SUM(total_amount) AS total_sales,
    CAST(
        SUM(total_amount) * 100.0 /
        (SELECT SUM(total_amount)
         FROM dbo.retail_sales_cleaned)
        AS DECIMAL(5,2)
    ) AS percentage_of_total_sales
FROM dbo.retail_sales_cleaned
GROUP BY product_category
ORDER BY total_sales DESC;


-- 18. Running total of sales
WITH monthly_sales AS (
    SELECT
        YEAR(date) AS sales_year,
        MONTH(date) AS sales_month,
        SUM(total_amount) AS monthly_sales
    FROM dbo.retail_sales_cleaned
    GROUP BY
        YEAR(date),
        MONTH(date)
)
SELECT
    sales_year,
    sales_month,
    monthly_sales,
    SUM(monthly_sales) OVER (
        ORDER BY sales_year, sales_month
    ) AS running_total_sales
FROM monthly_sales
ORDER BY sales_year, sales_month;


-- 19. Repeat customers
SELECT
    customer_id,
    COUNT(*) AS number_of_transactions,
    SUM(total_amount) AS total_spent,
    AVG(total_amount) AS average_transaction
FROM dbo.retail_sales_cleaned
GROUP BY customer_id
HAVING COUNT(*) > 1
ORDER BY number_of_transactions DESC, total_spent DESC;


-- 20. Category performance by month
SELECT
    YEAR(date) AS sales_year,
    MONTH(date) AS sales_month,
    product_category,
    SUM(quantity) AS units_sold,
    SUM(total_amount) AS total_sales,
    AVG(total_amount) AS average_transaction
FROM dbo.retail_sales_cleaned
GROUP BY
    YEAR(date),
    MONTH(date),
    product_category
ORDER BY
    sales_year,
    sales_month,
    total_sales DESC;
