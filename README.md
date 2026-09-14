# Pharmaceutical Sales & Inventory Analysis using SQL

## 📌 Project Overview

This project focuses on analyzing simulated pharmaceutical sales and inventory data using SQL and MySQL.

The dataset was synthetically generated using Mockaroo and contains information related to drugs, sales transactions, inventory levels, pricing, customer types, regions, and expiry dates.

The main objective of this project is to demonstrate how SQL can be applied to pharmaceutical data to generate meaningful insights related to sales performance, revenue, inventory management, expiry monitoring, and supply-chain risk.

This project represents my first step toward exploring the intersection of **Pharmaceutical Sciences, Data Analytics, and Technology**.

## 📊 Dataset

The dataset used in this project was synthetically generated using Mockaroo for educational and portfolio purposes.

The project contains four main tables:

| Table | Records | Description |
|---|---:|---|
| `pharma_drugs` | 1,000 | Drug information, therapeutic areas, dosage forms, manufacturers, and unit prices |
| `drug_sales` | 1,000 | Sales transactions, regions, customer types, units sold, and discounts |
| `inventory` | 1,000 | Drug batches, stock quantity, reorder levels, and expiry dates |
| `suppliers` | 20 | Supplier information and supply-related details |

### 🔗 Table Relationships

The tables are connected primarily through `drug_id`.

- `pharma_drugs` → Master drug information
- `drug_sales` → Sales transactions linked through `drug_id`
- `inventory` → Inventory records linked through `drug_id`
- `suppliers` → Supplier information linked through `supplier_id`

## 🛠️ Tools & Technologies

- **Mockaroo** — Synthetic pharmaceutical data generation
- **MySQL** — Database creation and SQL analysis
- **MySQL Workbench** — SQL query execution and database management
- **CSV / Excel** — Data handling and preparation
- **GitHub** — Project documentation and version control

## 🎯 Project Objectives

The main objectives of this project are:

- To create and analyze a simulated pharmaceutical dataset.
- To understand relational database design using MySQL.
- To apply SQL for pharmaceutical sales and inventory analysis.
- To identify top-selling drugs and therapeutic areas.
- To analyze regional and customer-wise sales performance.
- To identify low-stock and potentially high-risk products.
- To analyze drug expiry information.
- To develop practical skills in pharmaceutical data analytics.

## 🗂️ Database Structure

The project uses a relational database named `pharma_analytics`.

The database consists of four main tables:

### 1. `pharma_drugs`
Contains the master information of pharmaceutical products.

**Key fields:**
- `drug_id` — Unique drug identifier
- `drug_name` — Name of the drug
- `therapeutic_area` — Therapeutic category
- `dosage_form` — Tablet, Capsule, Injection, etc.
- `unit_price` — Price per unit
- `manufacturer` — Drug manufacturer

### 2. `drug_sales`
Contains pharmaceutical sales transaction data.

**Key fields:**
- `sale_id` — Unique sales transaction ID
- `drug_id` — Links sales with the drug table
- `sale_date` — Date of sale
- `region` — Sales region
- `customer_type` — Type of customer
- `units_sold` — Number of units sold
- `discount_percent` — Discount applied

### 3. `inventory`
Contains drug stock and batch information.

**Key fields:**
- `inventory_id` — Unique inventory record
- `drug_id` — Links inventory with the drug table
- `batch_number` — Drug batch identifier
- `stock_quantity` — Available stock
- `reorder_level` — Minimum stock level
- `expiry_date` — Batch expiry date
- `supplier_id` — Supplier identifier

### 4. `suppliers`
Contains supplier-related information.

**Key fields:**
- `supplier_id` — Unique supplier identifier
- `supplier_name` — Supplier name
- `supplier_city` — Supplier location
- `supplier_type` — Type of supplier
- `lead_time_days` — Expected supplier lead time

## 📊 SQL Analysis & Key Findings

The pharmaceutical dataset was analyzed using SQL to identify important patterns in sales, revenue, customer segments, and inventory.

### 1. Top-Selling Drugs

Rabeprazole was the highest-selling drug in the simulated dataset with **132,739 units sold**, followed closely by Doxycycline with **132,120 units**.

### 2. Sales by Therapeutic Area

The **Gastrointestinal** therapeutic area recorded the highest sales volume with **297,253 units**, followed by Antibiotics with **281,832 units**.

### 3. Revenue by Therapeutic Area

The **Gastrointestinal** therapeutic area generated the highest total revenue of **16,064,017** in the simulated dataset.

### 4. Regional Sales Performance

The **East region** recorded the highest sales volume with **439,125 units**, while the North region recorded the lowest with **387,143 units**.

### 5. Customer Segment Analysis

**Government Hospitals** represented the highest-volume customer segment with **537,378 units sold**.

### 6. Inventory Reorder Analysis

Out of 1,000 inventory records, **803 records (80.3%)** had stock levels below their defined reorder levels, indicating a potential need for inventory replenishment.

### 7. Expiry Analysis

The analysis identified drug batches with the earliest expiry dates, supporting expiry monitoring and FEFO (First-Expire, First-Out) inventory management.

### 8. High-Sales / Low-Inventory Analysis

Diclofenac had the lowest inventory among the identified high-selling drugs, with **110,183 units sold** and **8,921 units in stock**.

## 🧠 SQL Concepts Learned

During this project, I practiced and applied the following SQL concepts:

### Basic SQL
- `SELECT`
- `WHERE`
- `ORDER BY`
- `LIMIT`

### Aggregation & Grouping
- `SUM()`
- `AVG()`
- `COUNT()`
- `GROUP BY`
- `HAVING`

### Relational Data Analysis
- `INNER JOIN`
- `LEFT JOIN`
- Primary Keys
- Foreign Keys

### Conditional & Advanced SQL
- `CASE WHEN`
- `COALESCE()`
- Common Table Expressions (CTEs) using `WITH`

### Data Quality & Validation

An important learning from this project was that joining multiple tables containing repeated records can lead to row multiplication and incorrect aggregated results.

To avoid double counting, sales and inventory data were summarized separately using CTEs before joining them for analysis.

## ⚠️ Data Limitations

This project uses synthetically generated data created with Mockaroo for educational and portfolio purposes.

Therefore:

- The dataset does not represent actual pharmaceutical market data.
- The sales and inventory values are simulated.
- The findings should not be interpreted as real-world pharmaceutical market trends.
- Some relationships between generated attributes may not perfectly represent real pharmaceutical scenarios.
- The project is primarily intended to demonstrate SQL, data analysis, and pharmaceutical data analytics skills.

## 🚀 Future Improvements

This project can be further developed by:

- Adding monthly and yearly sales trend analysis.
- Developing drug demand forecasting models.
- Performing inventory turnover analysis.
- Identifying products at high risk of stock-out or expiry.
- Analyzing supplier performance and lead times.
- Calculating reorder quantities using historical demand.
- Integrating Python for advanced data analysis.
- Creating interactive dashboards using Power BI.
- Applying statistical methods for pharmaceutical data analysis.
- Using real-world pharmaceutical datasets for further validation.

## 🔍 Analysis Performed

The project includes 10 SQL-based analytical questions covering pharmaceutical sales, revenue, inventory, expiry, pricing, and regional performance.

| Question | Analysis Performed | Key SQL Concepts |
|---|---|---|
| Q1 | Identified the top-selling drugs based on total units sold. | `SUM()`, `GROUP BY`, `ORDER BY`, `LIMIT` |
| Q2 | Identified therapeutic areas with the highest total units sold. | `SUM()`, `GROUP BY`, `ORDER BY` |
| Q3 | Determined which therapeutic area generated the highest total revenue. | `SUM()`, multiplication, `GROUP BY`, `ORDER BY` |
| Q4 | Identified the region with the highest total units sold. | `SUM()`, `GROUP BY`, `ORDER BY` |
| Q5 | Identified the customer type purchasing the highest number of units. | `SUM()`, `GROUP BY`, `ORDER BY` |
| Q6 | Identified inventory records where stock was below the reorder level. | `CASE`, `WHERE`, `COUNT()` |
| Q7 | Identified drug batches closest to their expiry date. | `JOIN`, `ORDER BY`, `LIMIT` |
| Q8 | Identified drugs with high demand but relatively low stock. | CTE, `HAVING`, `LEFT JOIN`, `COALESCE()` |
| Q9 | Identified drugs with the highest average unit price. | `AVG()`, `ROUND()`, `GROUP BY` |
| Q10 | Determined which region generated the highest total sales revenue. | `JOIN`, `SUM()`, `GROUP BY`, `ORDER BY` |

## 🔄 Project Workflow

The project was completed through the following workflow:

1. **Data Generation**  
   Synthetic pharmaceutical data was generated using Mockaroo.

2. **Data Preparation**  
   The generated CSV files were checked and prepared for database import.

3. **Database Creation**  
   A MySQL database named `pharma_analytics` was created.

4. **Data Import**  
   Pharmaceutical drug, sales, inventory, and supplier data were imported into MySQL.

5. **Data Validation**  
   Imported records were checked to ensure that the data was available for analysis.

6. **SQL Analysis**  
   SQL queries were developed to analyze sales, revenue, inventory, expiry, pricing, regions, and customer segments.

7. **Result Interpretation**  
   Query outputs were interpreted to identify useful pharmaceutical business insights.

8. **Documentation**  
   The SQL queries, findings, concepts learned, limitations, and future improvements were documented in this GitHub repository.

## 📈 Results

The SQL analysis generated useful insights into pharmaceutical sales and inventory performance, including:

- Top-selling pharmaceutical products
- Sales performance across therapeutic areas
- Revenue generated by therapeutic areas and regions
- Regional sales distribution
- Customer-type-wise sales performance
- Inventory records requiring reorder
- Drug batches approaching expiry
- High-demand drugs with relatively lower inventory
- Average drug pricing patterns

The query results were generated using MySQL Workbench and are included as supporting evidence for the analysis.

## 📝 Conclusion

This project demonstrates the practical application of SQL and MySQL for analyzing pharmaceutical sales and inventory data.

Through this project, SQL was used to extract, organize, compare, and interpret pharmaceutical data related to sales, revenue, inventory, expiry, pricing, regions, and customer segments.

The project helped develop practical skills in relational database management, SQL querying, data aggregation, table joins, CTEs, and pharmaceutical data interpretation.

Overall, this project demonstrates how data analytics can support better understanding of pharmaceutical sales and inventory-related information.

## 👨‍💻 Project Information

**Project:** Pharmaceutical Sales & Inventory Analysis using SQL  
**Database:** MySQL  
**Data Source:** Synthetic dataset generated using Mockaroo  
**Analysis Tool:** MySQL Workbench  
**Repository:** GitHub

---

### 📚 Learning Outcome

This project provided hands-on experience in applying SQL to a pharmaceutical dataset and converting raw data into meaningful analytical insights.

It also strengthened practical understanding of database relationships, aggregation, filtering, joins, CTEs, and data-driven pharmaceutical analysis.
