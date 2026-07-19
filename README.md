# FoodRetail Sales & Margin Dashboard

A complete data pipeline and interactive Tableau workbook analyzing monthly financial performance, operational costs, and profitability margins.

---

Dashboard Preview
<img width="1005" height="807" alt="food-retail-dashboard" src="https://github.com/user-attachments/assets/79503c6b-2e57-40ca-b801-638bd1149ccf" />

### 📊 Project Overview

A complete data pipeline and interactive Tableau workbook analyzing monthly financial performance, operational costs, and profitability margins.

# Data Pipeline & Prep Work

1. Extraction & Querying (SQL)
   
Queried raw databases to extract transaction-level sales, operational costs, and monthly margins.

Performed initial aggregations to transform high-volume transactional logs into structured, monthly summary tables.

2. Data Cleaning & Auditing (Excel)
   
Used Excel to profile the exported data, identify formatting anomalies, and audit corrupted columns.

Manually cross-verified calculated values (Gross Margin/Net Margin formulas) against raw sales metrics to ensure absolute data integrity prior to visualization.

3. Data Modeling (Tableau)
   
Resolved key schema differences between the sales and margin datasets.

Established a solid relationship model to stitch together mismatched dimensional granularities on the fly.

# Key Visualizations

Cost vs. Revenue Analysis: Stacked visual breakdown comparing cost of sales and monthly operational overhead.

Sales & Profitability Dual-Axis Overlay: Maps monthly sales volume (bars) alongside Net Margin trends (line formatted as %) on a dual axis to instantly show how raw revenue growth affects bottom-line margins.
