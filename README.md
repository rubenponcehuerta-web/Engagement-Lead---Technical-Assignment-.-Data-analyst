# 📈 Marketing Performance Analysis Across Facebook, Google & TikTok
### Case Study: Cross-Platform Data Integration

## 📝 Project Overview
This project demonstrates an end-to-end data analysis workflow, from raw data ingestion to an interactive business dashboard. The objective was to consolidate fragmented marketing data from **Facebook Ads**, **Google Ads**, and **TikTok Ads** into a single source of truth to evaluate performance and optimize marketing spend.

---

## 📊 Key Insights
- Google Ads generated the highest conversion rate despite lower total spend  
- TikTok showed high impressions but low conversion efficiency  
- Facebook delivered the most balanced performance across all KPIs  
- Identified opportunities to reallocate budget to maximize overall ROI  

---

## 💡 Business Recommendations
- Reallocate budget toward higher-performing channels to improve conversion efficiency  
- Optimize TikTok campaign targeting to increase conversions  
- Scale investment in consistently high-performing Facebook campaigns  

---

## 🛠️ The Challenge
Marketing data across different platforms often arrives in inconsistent formats, including differences in column names, date formats, and data granularity.

**Goal:** Automate the consolidation of multiple CSV datasets into a unified SQL table and visualize the results in **Google Looker Studio**.

---

## ⚙️ Data Engineering & ETL (SQL)

Developed a MySQL-based ETL pipeline to handle data extraction, transformation, and validation.

### 1. High-Performance Data Ingestion
Used the `LOAD DATA INFILE` command to efficiently import raw CSV files into staging tables:
- `raw_fb_ads`  
- `raw_google_ads`  
- `raw_tiktok_ads`  

This approach significantly improves performance compared to row-by-row inserts.

### 2. Data Normalization & Mapping
Created a unified analytical table (`unified_ads`) using `UNION ALL` to standardize the schema.

- **Schema Alignment:** Standardized platform-specific fields (e.g., `spend` vs. `cost`) into a consistent structure  
- **Platform Categorization:** Added platform identifiers to enable filtering in the BI layer  
- **Idempotency:** Used `TRUNCATE TABLE` to ensure repeatable and clean data loads  

### 3. Quality Assurance (QA)
Validated data integrity using:
- `COUNT(*)` for row validation  
- `SUM(cost)` for financial accuracy  
- `DISTINCT` checks for duplication control  

Ensured 100% consistency before visualization.

---

## 📊 Dashboard (Google Looker Studio)

- Built an interactive dashboard connected to the processed SQL dataset  
- Tracked key KPIs: **Total Spend, Impressions, Clicks, Conversions**  
- Enabled filtering by platform and date for self-service analysis  

🔗 **Live Dashboard:**  
https://lookerstudio.google.com/reporting/7e17a680-a7c9-45d3-b638-aec2f63ee385/page/JAqjF  

---

## 💡 Skills Demonstrated
- SQL (ETL, data transformation, UNION, data validation)  
- Data Cleaning and Normalization  
- Data Modeling (analytical table design)  
- Business Intelligence (Looker Studio dashboards)  
- Data Analysis and Insight Generation  

---

*Developed by Rubén Ponce Huerta — Data Analyst Candidate*
