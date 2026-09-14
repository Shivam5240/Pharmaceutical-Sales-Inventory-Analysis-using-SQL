-- Which therapeutic area generates the highest total revenue?

-- SELECT
--     d.therapeutic_area,
--     SUM(s.units_sold * d.unit_price) AS total_revenue
-- FROM pharma_drugs d
-- JOIN drug_sales s
--     ON d.drug_id = s.drug_id
-- GROUP BY d.therapeutic_area
-- ORDER BY total_revenue DESC;

-- INTERPRETATION !!!
-- Gastrointestinal therapeutic area generated the highest revenue: 16,064,017 in our simulated datase

-- LESSON !!!
-- s.units_sold * d.unit_price [calculate revenue of sale record]
-- SUM(s.units_sold * d.unit_price) [total rervenue calculate]