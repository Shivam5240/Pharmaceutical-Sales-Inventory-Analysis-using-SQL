-- Which drugs are selling the most?
-- use of alias as d is pharma_drug table and s is drug_sale table

-- SELECT
--     d.drug_name,
--     SUM(s.units_sold) AS total_units_sold
-- FROM pharma_drugs d
-- JOIN drug_sales s
--     ON d.drug_id = s.drug_id
-- GROUP BY d.drug_name
-- ORDER BY total_units_sold DESC
-- LIMIT 10;


-- RESULT INTERPRETATION !!!
-- Rabeprazole was the highest-selling drug in the generated dataset, with 132,739 units sold, followed closely by Doxycycline with 132,120 units.

-- LESSON LEARN !!!
-- using 4 important concept
-- SUM()
-- GROUP BY
-- ORDER BY ... DESC
-- LIMIT 10