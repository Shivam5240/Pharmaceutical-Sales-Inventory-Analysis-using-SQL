-- Which region generates the highest total sales revenue?

SELECT
    s.region,
    SUM(s.units_sold * d.unit_price) AS total_revenue
FROM drug_sales s
JOIN pharma_drugs d
    ON s.drug_id = d.drug_id
GROUP BY s.region
ORDER BY total_revenue DESC;

-- LESSON LEARN !!!
-- 1. JOIN()