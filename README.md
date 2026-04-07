Hello ! this is a small project that i used for improvado company 
# 📈 Multi-Channel Marketing ETL & Dashboard
### Case Study: Unifying TikTok, Google Ads, and Amazon Data

## 📝 Overview
This project addresses the challenge of fragmented marketing data. Based on a technical assessment for Improvado, I integrated three separate data sources—**TikTok**, **Google Ads**, and **Amazon Sales**—into a unified reporting solution to measure cross-platform performance.

## 🛠️ The Challenge
The raw data consisted of three distinct Excel datasets with different schemas and granularities:
* **Marketing Data (TikTok & Google):** Daily metrics including *Spend*, *Impressions*, and *Clicks*.
* **Sales Data (Amazon):** Product-level performance (ASIN) including *Revenue* and *Units Sold*.
* **Objective:** Consolidate these sources to calculate the true **Return on Ad Spend (ROAS)**.

## ⚙️ Data Workflow & Tech Stack

### 1. Data Processing (SQL)
Instead of manual cleanup, I used **SQL** to handle the heavy lifting of data transformation:
* **Normalization:** Used `UNION ALL` and `CASE` statements to standardize disparate column names into a single marketing schema.
* **Aggregations:** Leveraged `SUM()` and `GROUP BY` to roll up granular sales data to match marketing campaign dates.
* **Joins:** Applied complex `LEFT JOIN` logic to merge advertising costs with corresponding revenue, ensuring no data loss from non-attributed days.

### 2. Visualization (Google Looker Studio)
* Developed an interactive dashboard to visualize the unified dataset.
* Created **Calculated Fields** within Looker Studio to track real-time KPIs like CPC, CTR, and ROAS.
* Designed filters for Date Ranges and Platforms to allow stakeholders to drill down into specific campaign performance.

### 3. Data Management (Excel)
* Used Excel as the initial staging environment for data validation before SQL processing.

## 📊 Key Insights & Skills Demonstrated
* **Schema Design:** Ability to design a unified table structure from inconsistent sources.
* **SQL Mastery:** Advanced use of joins and aggregations to solve real-world business problems.
* **BI Expertise:** Proficiency in **Google Looker Studio** to translate raw numbers into actionable business insights.
* **Strategic Thinking:** Focused on high-level metrics (ROI/ROAS) that drive executive decision-making.

---
*Developed by Rubén Ponce Huerta — Data Analyst Candidate focused on SQL & BI Solutions.*
