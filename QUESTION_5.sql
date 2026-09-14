-- Which customer type purchases the highest number of units?

SELECT
    s.customer_type,
    SUM(s.units_sold) AS total_units_sold
FROM drug_sales s
GROUP BY s.customer_type
ORDER BY total_units_sold DESC;

-- INTERPRETATION !!
-- Government Hospitals represent the strongest customer segment by sales volume.
