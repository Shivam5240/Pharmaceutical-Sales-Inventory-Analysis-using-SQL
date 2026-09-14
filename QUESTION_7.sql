-- Which drug batches are closest to their expiry date?

SELECT
    i.inventory_id,
    d.drug_name,
    i.batch_number,
    i.expiry_date,
    i.stock_quantity
FROM inventory i
JOIN pharma_drugs d
    ON i.drug_id = d.drug_id
ORDER BY i.expiry_date ASC
LIMIT 10;

-- INTERPRETATION !!! 
-- The analysis identified the 10 drug batches with the earliest expiry dates. The earliest-expiring batch was Metformin (Batch B2025A002), with an expiry date of January 1, 2027 and a stock quantity of 511 units.
-- Among the listed batches, Telmisartan (Batch B2026A005) had only 28 units in stock and an expiry date of January 20, 2027, making it a batch that should be closely monitored.
-- This type of expiry-date analysis can help pharmaceutical companies reduce product wastage, financial losses, and expiry-related inventory problems. It can also support FEFO (First-Expire, First-Out) inventory management, where products with the earliest expiry dates are prioritized for distribution.

-- LESSON LEARN !!!

-- [arrange in descending order from Earliest date to latest date]
-- ORDER BY i.expiry_date ASC