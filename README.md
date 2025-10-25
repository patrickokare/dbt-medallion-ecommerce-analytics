

# 🛍️ dbt-Medallion-Ecommerce-Analytics

This project implements the **Medallion Architecture (Bronze → Silver → Gold)** using **dbt + Databricks** on an **e-commerce dataset** containing Orders, Users, Products, and Reviews.  

The goal is to demonstrate a **production-grade ELT pipeline** where raw data evolves through transformation layers to become clean, trusted, and analytics-ready.

---

## 🧱 Medallion Architecture Overview

| Layer | Purpose | Example Models |
|-------|----------|----------------|
| **Bronze** | Raw ingestion layer — minimal transformation. Landing zone for data from operational sources. | `bronze_orders`, `bronze_users`, `bronze_products`, `bronze_reviews` |
| **Silver** | Cleansed & conformed layer — standardizes formats, applies data quality rules, joins lookup data. | `silver_orders`, `silver_users`, `silver_products` |
| **Gold** | Aggregation & semantic layer — business-ready tables for dashboards and analytics. | `gold_sales_daily`, `gold_avg_rating_daily` |

---

## ⚙️ Tech Stack

- 🧩 **dbt** — SQL-based transformations & lineage tracking  
- 🔥 **Databricks** — scalable compute + Delta Lake storage  
- 🪣 **Delta Lake** — ACID-compliant format for reliability  
- 🧠 **Git & CI/CD** — version control and automated testing  
- 📊 **Preset / Power BI / Fabric** — optional reporting layer

---

## 🚀 How to Run Locally

1. **Clone this repo:**
   ```bash
   git clone https://github.com/patrickokare/dbt-medallion-ecommerce-analytics.git
   cd dbt-medallion-ecommerce-analytics

	2.	Install dependencies:

dbt deps


	3.	Run transformations (layer by layer):

dbt run --select bronze
dbt run --select silver
dbt run --select gold


	4.	Run data tests:

dbt test



⸻

📊 Outputs

Model	Description
gold_sales_daily	Daily sales fact table aggregating total revenue, units sold, and order counts
gold_avg_rating_daily	Daily product-rating aggregation for customer satisfaction analytics


⸻

📁 Folder Structure

dbt-medallion-ecommerce-analytics/
│
├── models/
│   ├── bronze/
│   ├── silver/
│   └── gold/
│
├── macros/
├── tests/
├── seeds/
└── dbt_project.yml


⸻

🧩 Data Quality & Governance
	•	✅ Source freshness checks
	•	✅ Schema tests (unique, not_null, accepted_values)
	•	✅ Referential integrity between facts and dimensions
	•	✅ Row-level deduplication & audit metadata (inserted_at, updated_at, source_system)

⸻

👤 Author

Patrick Okare
Data Engineer • KareTech Analytics
📧 LinkedIn Profile

