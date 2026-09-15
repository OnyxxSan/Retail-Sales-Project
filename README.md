# Retail Sales Analysis Dashboard

A comprehensive end-to-end data analytics project demonstrating proficiency in **Python data cleaning, SQL analysis, and Power BI visualization**.

## 📋 Executive Summary

A complete analytics pipeline transforming 1,000 retail transactions into actionable business intelligence. Developed proficiency across Python (Pandas), SQL (T-SQL with window functions & CTEs), and Power BI, uncovering a **4.1x revenue opportunity for multi-item purchases** and revealing **balanced portfolio performance** across product categories to mitigate single-product risk.

---

## 📊 Project Overview

This project transforms raw retail transaction data into actionable business insights through a three-stage analytics pipeline:

1. **Data Cleaning** (Python) - Prepare and validate 1,000 transactions
2. **Data Analysis** (SQL) - Generate 20+ analytical queries
3. **Visualization** (Power BI) - Interactive dashboard with key metrics

### Key Metrics
| Metric | Value |
|--------|------:|
| Total Sales | $456,000 |
| Average Transaction | $456 |
| Total Transactions | 1,000 |

---

## 🔍 Key Findings

### Product Performance
- **Electronics**: $156,905 (34.4%) — Highest revenue
- **Clothing**: $155,580 (34.2%) — Close second
- **Beauty**: $143,515 (31.4%) — Well-balanced portfolio

### Customer Insights
- **Gender Distribution**: 48% Female ($232,840) vs 46% Male ($223,160) — Nearly balanced
- **Purchase Quantity Impact**: 4-item transactions generate **4.1x more revenue** than 1-item purchases
- **Repeat Customers**: Strong loyalty metrics indicate effective retention

---

## 💡 Business Insights & Recommendations

**Finding 1: Balanced Product Portfolio**
All three product categories generate similar revenue (31-34%), reducing dependency on any single product line.
- *Recommendation*: Maintain diversified inventory strategy

**Finding 2: Quantity Drives Revenue** ⭐
Multi-item purchases are significantly more valuable—bulk buyers should be a target segment.
- *Recommendation*: Implement bundle discounts and upselling strategies to increase average transaction size

**Finding 3: Balanced Gender Demographics**
Nearly equal contribution from male and female customers suggests broad market appeal.
- *Recommendation*: Continue gender-neutral marketing approach

**Finding 4: Repeat Customer Opportunity**
Significant portion of customers make repeat purchases—loyalty programs could enhance retention.
- *Recommendation*: Develop loyalty rewards program targeting repeat buyers

---

## 🛠️ Tech Stack

| Component | Technologies |
|-----------|--------------|
| **Data Cleaning** | Python, Pandas, NumPy, Jupyter Notebook |
| **Analysis** | SQL Server, T-SQL (Window Functions, CTEs, Aggregations) |
| **Visualization** | Power BI (Slicers, KPI cards, Drill-through) |
| **Environment** | Google Colab, GitHub |

---

## 📁 Project Structure

```
Retail-Sales-Project/
│
├── README.md                          # Project documentation
│
├── 📂 data/
│   └── retail_sales_dataset.csv      # Raw transaction data (1,000 records)
│
├── 📂 python/
│   └── retail_data_cleaning.ipynb    # Data inspection, validation, cleaning
│
├── 📂 sql/
│   └── retail_analysis.sql           # 20+ analytical queries
│
├── 📂 powerbi/
│   ├── retail_sales_dashboard.pbix   # Interactive Power BI dashboard
│   └── dashboard_preview.png         # Dashboard screenshot
│
└── 📂 docs/
    └── analysis_summary.md           # Detailed findings and insights
```

---

## 🚀 Quick Start

### Prerequisites
- **Power BI Desktop** (for .pbix file)
- **Python 3.x** with Pandas, NumPy installed (for Jupyter notebook)
- **SQL Server** or SQL Server Management Studio (for queries)

### 1. Data Preparation
```bash
# Open and run the Python notebook
python/retail_data_cleaning.ipynb
```
**Outputs**: Cleaned dataset ready for analysis
- Data validation report
- Missing value analysis
- Outlier detection and handling

### 2. SQL Analysis
```bash
# Execute queries against cleaned data
sql/retail_analysis.sql
```
**Outputs**: 20+ analytical queries covering:
- Sales by category, gender, age group
- Monthly trends and day-of-week patterns
- Customer segmentation and repeat analysis
- Revenue distribution by product and price range

### 3. Power BI Visualization
```bash
# Open the dashboard (requires Power BI Desktop)
powerbi/retail_sales_dashboard.pbix
```
**Features**:
- 3 KPI cards (Total Sales, Avg Transaction, Transaction Count)
- 6 interactive visualizations
- Slicers for dynamic exploration and drill-down analysis

---

## 📈 Analysis Highlights

### SQL Analysis Coverage
- ✅ Total sales aggregation by multiple dimensions
- ✅ Customer segmentation (age groups, gender, spending tiers)
- ✅ Time-series analysis (monthly sales, day-of-week patterns)
- ✅ Product performance metrics (units sold, revenue contribution)
- ✅ Customer lifetime value and repeat purchase analysis
- ✅ Advanced queries (CTEs, window functions, percentage calculations, ranking)

### Dashboard Visualizations
- Sales by Product Category (bar chart)
- Sales by Gender (comparison)
- Sales by Customer Age Group (trend analysis)
- Average Transaction by Category (performance ranking)
- Sales by Quantity Purchased (purchase behavior)
- Monthly Sales Trend (time-series)

---

## 📦 Project Deliverables

- ✅ **Production-ready cleaned dataset** with comprehensive data quality validation
- ✅ **20+ SQL queries** demonstrating advanced analytics expertise
- ✅ **Interactive Power BI dashboard** with 6+ visualizations and real-time filtering
- ✅ **Actionable business recommendations** based on data-driven insights
- ✅ **Complete documentation** for reproducibility and stakeholder communication

---

## 🎓 Skills Demonstrated

| Skill Category | Specific Skills |
|---|---|
| **Python/Pandas** | Data cleaning, validation, outlier detection, statistical analysis |
| **SQL/T-SQL** | Window functions (ROW_NUMBER, RANK), CTEs, JOIN operations, aggregations |
| **Power BI** | Dashboard design, KPI cards, slicers, drill-through filters, data modeling |
| **Analytics** | Customer segmentation, cohort analysis, trend analysis, business insight generation |
| **Communication** | Clear documentation, actionable recommendations, visual storytelling |

---

## 📊 Data Dictionary

**Dataset**: `retail_sales_dataset.csv` (1,000 transactions)

| Column | Type | Description |
|--------|------|-------------|
| Transaction ID | INT | Unique transaction identifier |
| Date | DATE | Transaction date (2023) |
| Customer ID | VARCHAR | Customer identifier |
| Gender | VARCHAR | Male/Female |
| Age | INT | Customer age (18-64) |
| Product Category | VARCHAR | Beauty, Clothing, Electronics |
| Quantity | INT | Units purchased (1-4) |
| Price per Unit | DECIMAL | Unit price ($25-$500) |
| Total Amount | DECIMAL | Transaction total |

---

## 🎯 Portfolio Highlights

✨ **End-to-End Pipeline** - Complete analytics workflow from raw data to insights
✨ **Multiple Tools Proficiency** - Demonstrates expertise across Python, SQL, and Power BI
✨ **Advanced SQL** - Complex queries with CTEs, window functions, and aggregations
✨ **Professional Visualization** - Dashboard-ready insights with interactive KPIs
✨ **Data Quality First** - Thorough cleaning and validation processes
✨ **Business-Focused** - Recommendations tied directly to data findings
✨ **Clear Documentation** - Well-commented code and comprehensive analysis

---

## 🔗 Files Summary

| File | Purpose | Key Content |
|------|---------|-------------|
| `retail_sales_dataset.csv` | Source data | 1,000 retail transactions |
| `retail_data_cleaning.ipynb` | Data prep | Pandas workflows for validation |
| `retail_analysis.sql` | Analysis | 20+ queries with advanced SQL techniques |
| `retail_sales_dashboard.pbix` | Visualization | Interactive Power BI dashboard |
| `dashboard_preview.png` | Preview | Static dashboard image |

---

## 📝 Notes

- **Data Period**: All transactions from 2023
- **Data Quality**: Complete dataset with no missing values
- **Analysis Scope**: Comprehensive coverage of sales, customer, and product dimensions
- **Interactivity**: Full filtering and drill-down capabilities in Power BI
- **Reproducibility**: Well-documented code for easy reproduction and modification

---

**Project Status**: ✅ Complete | **Last Updated**: September 2026