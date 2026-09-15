# Retail Sales Analysis Dashboard

## Overview

This project is an end-to-end retail sales analysis designed to transform raw transaction data into actionable business insights.

The project uses **Python for data cleaning and preparation, SQL Server for data analysis, and Power BI for data visualization and dashboard development**.

The analysis focuses on sales performance, product categories, customer demographics, purchasing behavior, and monthly sales trends.

---

## Project Objectives

The primary objective of this project was to use data analysis tools to answer key business questions about retail sales performance and customer purchasing behavior.

Specifically, the analysis investigates:

- Overall sales performance
- Transaction volume and average transaction value
- Product category performance
- Sales distribution by gender
- Purchasing behavior based on quantity purchased
- Customer age-group purchasing behavior
- Monthly sales trends

---

## Tools & Technologies

- **Python**
  - Pandas
  - Matplotlib
- **SQL Server**
- **Power BI**
- **Google Colab**
- **GitHub**

---

## Project Workflow

The project was completed through a three-stage data analytics workflow:

### 1. Data Cleaning & Preparation — Python

Python and Pandas were used to prepare the raw retail transaction data for analysis.

The data preparation process included:

- Inspecting the dataset structure
- Checking for missing values
- Checking for duplicate records
- Validating data types
- Cleaning and preparing the data for analysis

The complete Python workflow is available in:

`python/retail_data_cleaning.ipynb`

---

### 2. Data Analysis — SQL Server

The cleaned dataset was loaded into SQL Server for analysis.

SQL queries were used to calculate key performance indicators and investigate business questions, including:

- Total sales
- Total transactions
- Average transaction value
- Sales by product category
- Sales by gender
- Sales by age group
- Sales by quantity purchased
- Monthly sales performance

The complete SQL analysis is available in:

`sql/retail_analysis.sql`

---

### 3. Data Visualization — Power BI

Power BI was used to transform the analysis into an interactive dashboard.

The dashboard contains:

- Total Sales KPI
- Average Transaction Value KPI
- Total Transactions KPI
- Sales by Quantity Purchased
- Sales by Customer Age Group
- Average Transaction Amount by Category
- Sales by Product Category
- Sales by Gender
- Monthly Sales Trend
- Key Business Takeaways

The Power BI dashboard is available in:

`powerbi/retail_sales_dashboard.pbix`

---

# Key Findings

### Product Category Performance

Electronics generated the highest total sales at **$156,905 (34.4% of total sales)**, closely followed by Clothing at **$155,580 (34.2%)**. Beauty generated **$143,515 (31.4%)**.

The relatively small difference between Electronics and Clothing suggests that sales were distributed fairly evenly across the three product categories.

### Gender Sales Distribution

Female customers generated **$232,840 (48.0%)** of total sales, compared with **$223,160 (46.1%)** from male customers.

The difference of **$9,680** indicates a relatively balanced sales distribution between the two groups.

### Purchasing Quantity

Larger-quantity transactions accounted for a substantial share of total sales.

Transactions involving **4 items generated $185,860 (40.7%)** of total sales, compared with **$44,805 (9.9%)** from transactions involving 1 item.

This represents approximately **4.1 times more sales** from 4-item transactions than from 1-item transactions.

---

# Key Performance Indicators

| Metric | Value |
|---|---:|
| Total Sales | **$456,000** |
| Average Transaction Value | **$456** |
| Total Transactions | **1,000** |

---

# Dashboard

The final Power BI dashboard provides an interactive overview of retail sales performance, customer demographics, purchasing behavior, and monthly trends.

![Retail Sales Dashboard](powerbi/dashboard_preview.png)

---

# Project Structure

```text
retail-sales-analysis/
│
├── README.md
│
├── python/
│   └── retail_data_cleaning.ipynb
│
├── sql/
│   └── retail_analysis.sql
│
├── powerbi/
│   ├── retail_sales_dashboard.pbix
│   └── dashboard_screenshot.png
│
└── data/
    └── retail_sales.csv
