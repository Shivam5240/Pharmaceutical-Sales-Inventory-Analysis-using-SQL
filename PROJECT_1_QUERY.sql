-- CREATE DATABASE pharma_analytics;
-- CREATE TABLE pharma_drugs (
--     drug_id INT PRIMARY KEY,
--     drug_name VARCHAR(100),
--     therapeutic_area VARCHAR(100),
--     dosage_form VARCHAR(50),
--     unit_price DECIMAL(10,2),
--     manufacturer VARCHAR(100)
-- );

-- SELECT COUNT(*) AS total_drugs
-- FROM pharma_drugs;

-- FROM pharma_drugs
-- LIMIT 10;

-- SELECT * FROM pharma_drugs;

-- CREATE TABLE drug_sales (
--     sale_id INT PRIMARY KEY,
--     drug_id INT,
--     sale_date DATE,
--     region VARCHAR(50),
--     customer_type VARCHAR(100),
--     units_sold INT,
--     discount_percent DECIMAL(5,2),
--     
--     FOREIGN KEY (drug_id) REFERENCES pharma_drugs(drug_id)
-- );

-- SELECT COUNT(*) AS total_sales
-- FROM drug_sales;

-- CREATE TABLE inventory (
--     inventory_id INT PRIMARY KEY,
--     drug_id INT,
--     batch_number VARCHAR(50),
--     stock_quantity INT,
--     reorder_level INT,
--     expiry_date DATE,
--     supplier_id INT,
--     
--     FOREIGN KEY (drug_id) REFERENCES pharma_drugs(drug_id)
-- );
-- SELECT COUNT(*) AS total_inventory
-- FROM inventory;

-- CREATE TABLE suppliers (
--     supplier_id INT PRIMARY KEY,
--     supplier_name VARCHAR(100),
--     supplier_city VARCHAR(100),
--     supplier_type VARCHAR(50),
--     lead_time_days INT
-- );
-- SELECT * from suppliers


