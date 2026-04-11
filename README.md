Markdown
# 📈 Multi-Channel Marketing ETL & Dashboard
### Case Study: Cross-Platform Data Integration (TikTok, Google & Facebook)

## 📝 Project Overview
This project demonstrates a full-cycle Data Analysis workflow: from raw data ingestion to an interactive business dashboard. The objective was to consolidate fragmented marketing data from **Facebook Ads**, **Google Ads**, and **TikTok Ads** into a single "Source of Truth" to analyze overall performance and spend efficiency.

## 🛠️ The Challenge
Marketing data across different platforms often arrives in inconsistent formats (different column names, date formats, and granularities). 
* **The Goal:** Automate the consolidation of three CSV datasets into a unified SQL table and visualize the results in **Google Looker Studio**.

## ⚙️ Data Engineering & ETL (SQL)

I developed a robust MySQL script to handle the extraction and transformation layers of the pipeline.

### 1. High-Performance Data Ingestion
Used the `LOAD DATA INFILE` command to efficiently import raw CSV files into dedicated staging tables (`raw_fb_ads`, `raw_google_ads`, `raw_tiktok_ads`). This approach ensures faster processing compared to standard row-by-row imports.

### 2. Data Normalization & Mapping
I engineered a `unified_ads` table using `UNION ALL` logic to standardize the schema.
* **Schema Alignment:** Mapped disparate platform-specific columns (e.g., Facebook's `spend` vs. TikTok's `cost`) into a consistent `cost` column.
* **Platform Categorization:** Added hardcoded platform identifiers during the union process to enable granular filtering in the BI layer.
* **Idempotency:** Implemented `TRUNCATE TABLE` commands to ensure the data loading process can be repeated without duplicating records.

### 3. Quality Assurance (QA)
Included validation queries using `COUNT(*)`, `SUM(cost)`, and `DISTINCT` to audit row counts and financial totals, ensuring 100% data integrity before pushing to the dashboard.

## 📊 Business Intelligence (Google Looker Studio)
* **Unified Reporting:** Created an interactive dashboard in Looker Studio connected to the SQL-processed data.
* **Key Metrics:** Focused on high-level KPIs including **Total Spend**, **Impressions**, **Clicks**, and **Conversions**.
* **Interactivity:** Designed date-range controllers and platform filters to allow stakeholders to perform self-service analysis.

## 💡 Skills Demonstrated
* **Database Management:** Schema design and DDL/DML proficiency.
* **Advanced SQL:** Mastering 
* **ETL Workflow:** Understanding the transition from Raw Data → Staging → Unified Analytical Layer.
* **BI Visualization:** Translating complex datasets into actionable business insights.

---
*Developed by Rubén Ponce Huerta — Data Analyst Candidate 
