-- Which therapeutic areas have the highest total units sold?

-- SELECT
--     d.therapeutic_area,
--     SUM(s.units_sold) AS total_units_sold
-- FROM pharma_drugs d
-- JOIN drug_sales s
--     ON d.drug_id = s.drug_id
-- GROUP BY d.therapeutic_area
-- ORDER BY total_units_sold DESC;

-- INTERPRETATION
-- The highest overall sales is of Gastrointestinal drugs - 297,253 in our simulated datase

-- LESSON LEARN !!!
-- using 4 important concept
-- SUM()
-- GROUP BY
-- ORDER BY ... DESC
-- LIMIT 10
