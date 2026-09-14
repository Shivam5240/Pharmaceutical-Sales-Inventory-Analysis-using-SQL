-- Which drugs have the highest average unit price?

SELECT
    drug_name,
    ROUND(AVG(unit_price), 2) AS average_unit_price
FROM pharma_drugs
GROUP BY drug_name
ORDER BY average_unit_price DESC
LIMIT 10;

-- LESSON LEARN !!
-- 1. AVG() [AVG(unit_price)- Calculates the average value]
-- 2. ROUND() [ROUND(AVG(unit_price), 2)- Rounds the result to 2 decimal places]
