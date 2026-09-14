-- Which drugs have high demand but relatively low stock?

WITH sales_summary AS (
    SELECT
        drug_id,
        SUM(units_sold) AS total_units_sold
    FROM drug_sales
    GROUP BY drug_id
),
inventory_summary AS (
    SELECT
        drug_id,
        SUM(stock_quantity) AS total_stock
    FROM inventory
    GROUP BY drug_id
)
SELECT
    d.drug_name,
    SUM(ss.total_units_sold) AS total_units_sold,
    SUM(COALESCE(isum.total_stock, 0)) AS total_stock
FROM pharma_drugs d
JOIN sales_summary ss
    ON d.drug_id = ss.drug_id
LEFT JOIN inventory_summary isum
    ON d.drug_id = isum.drug_id
GROUP BY d.drug_name
HAVING SUM(ss.total_units_sold) > 100000
ORDER BY total_stock ASC;

-- INTERPRETATION !!!
-- The analysis identified eight drugs with total sales exceeding 100,000 units. Among these, Diclofenac had the lowest available inventory, with only 8,921 units against 110,183 units sold.
-- Budesonide also showed a high sales volume of 115,813 units while having only 9,133 units in stock.
-- This indicates that Diclofenac and Budesonide may require closer inventory monitoring, as they combine relatively high demand with comparatively low stock levels.
-- Doxycycline and Rabeprazole had the highest sales volumes, with 132,120 and 132,739 units, respectively, but also had higher stock levels than the other high-selling drugs.

-- [* The biggest concept from Question 8 is: Always be careful when joining multiple tables containing repeated records. 
-- A direct JOIN can cause double counting. Summarizing each table first using CTEs can prevent this problem.]

-- LESSON LEARN !!!

-- 1. HAVING [filters groups after "group by"]
-- 2. HAVING SUM(s.units_sold) > 100000 [Show only drugs whose total sales are greater than 100,000 units.] 
-- 3. WITH sales_summary AS (...) [Common Table Expression (CTE)- creates a temporary result set that can be used within the main query. Total sales for each drug ID]
-- 4. COALESCE(isum.total_stock, 0) [replaces a NULL value with another value. If a drug has no inventory record → treat its stock as 0]