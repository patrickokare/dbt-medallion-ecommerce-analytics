# dbt-medallion-ecommerce-analytics

This project implements the **Medallion Architecture** (Bronze → Silver → Gold) in **dbt + Databricks**, using an e-commerce dataset (Orders, Users, Products, Reviews).  

The goal is to demonstrate how raw data flows through transformation layers to produce clean, analytics-ready tables.

---

## 📂 Project Structure

- **Bronze Layer (Raw Ingest)**
  - `bronze_orders`
  - `bronze_users`
  - `bronze_products`
  - `bronze_reviews`

- **Silver Layer (Clean & Conformed)**
  - `silver_orders`
  - `silver_products`
  - `silver_users`

- **Gold Layer (Aggregations & BI-Ready)**
  - `gold_sales_daily`
  - `gold_avg_rating_daily`

---

## ⚙️ Tech Stack
- [dbt](https://docs.getdbt.com/) for data modeling & transformations
- [Databricks](https://www.databricks.com/) for storage, compute, and orchestration
- **Delta Lake** format for reliability and performance

---

## 🚀 How to Run
1. Clone this repo:
   ```bash
   git clone https://github.com/<your-username>/dbt-medallion-ecommerce-analytics.git
   cd dbt-medallion-ecommerce
dbt deps
dbt run --select bronze
dbt run --select silver
dbt run --select gold

dbt test

 Outputs
	•	Daily Sales Fact Table (gold_sales_daily)
	•	Average Ratings Aggregation (gold_avg_rating_daily)

 Author: Patrick Okare
