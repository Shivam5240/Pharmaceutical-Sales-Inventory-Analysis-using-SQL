-- Which inventory records have stock levels below their reorder level?

SELECT
    i.inventory_id,
    d.drug_name,
    i.batch_number,
    i.stock_quantity,
    i.reorder_level,
    CASE
        WHEN i.stock_quantity < i.reorder_level
        THEN 'Reorder Required'
        ELSE 'Stock Sufficient'
    END AS stock_status
FROM inventory i
JOIN pharma_drugs d
    ON i.drug_id = d.drug_id
WHERE i.stock_quantity < i.reorder_level
ORDER BY i.stock_quantity ASC;

-- total how many drug we need to reorder >
SELECT COUNT(*) AS drugs_needing_reorder
FROM inventory
WHERE stock_quantity < reorder_level;

-- LESSON LEARN !!
-- 1. [if stock is less than reorder level then → Reorder Required; Otherwise → Stock Sufficient]
-- CASE
   --  WHEN stock_quantity < reorder_level
--     THEN 'Reorder Required'
--     ELSE 'Stock Sufficient'
-- END                          

-- 2. [to see only those option which are less than reoder level]
-- WHERE i.stock_quantity < i.reorder_level

-- 3. COUNT(*)