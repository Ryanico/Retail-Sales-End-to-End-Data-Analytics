# 🛒 Retail Sales End-to-End Data Analysis

## 📖 Project Overview

This project demonstrates an end-to-end data analytics workflow using **Python, SQL, and Power BI**. Starting with a raw retail sales dataset from Kaggle, the data was cleaned and prepared using Python, analyzed using SQL, explored through Python visualizations, and finally presented through an interactive Power BI dashboard.

The objective of this project is to showcase practical data analytics skills by transforming raw business data into actionable business insights and recommendations.

---

## 🎯 Business Problem

Retail businesses generate thousands of transactions every day. However, raw data often contains missing values, duplicate records, inconsistent formatting, and incorrect data types, making it difficult to perform meaningful analysis.

The goal of this project is to clean the dataset, analyze sales performance, identify business trends, and create an executive dashboard for decision-making.

---

## 🎯 Objectives

- Clean and preprocess raw retail sales data
- Store cleaned data in a relational database
- Perform SQL-based business analysis
- Conduct Exploratory Data Analysis (EDA)
- Build an interactive Power BI dashboard
- Generate business insights and recommendations

---

## 🛠️ Tools & Technologies

### Python
- Pandas
- NumPy
- Matplotlib
- Jupyter Notebook

### SQL
- MySQL Workbench

### Business Intelligence
- Microsoft Power BI

### Version Control
- Git
- GitHub

---

# 🔄 Project Workflow

```text
Raw Kaggle Dataset
        │
        ▼
Python (Data Cleaning)
        │
        ▼
Cleaned CSV
        │
        ├────────► MySQL
        │            │
        │            └── SQL Business Analysis
        │
        ├────────► Python
        │            │
        │            └── Exploratory Data Analysis
        │
        └────────► Power BI
                     │
                     └── Interactive Dashboard
```

---

# 📂 Repository Structure

```text
Retail-Sales-End-to-End-Analysis/
│
├── data/
│   ├── raw_retail_sales.csv
│   └── cleaned_retail_sales.csv
│
├── python/
│   ├── 01_data_cleaning.ipynb
│   └── 02_exploratory_data_analysis.ipynb
│
├── sql/
│   ├── create_database.sql
│   ├── create_table.sql
│   ├── sales_analysis.sql
│   ├── customer_analysis.sql
│   ├── product_analysis.sql
│   ├── time_series_analysis.sql
│   └── window_functions.sql
│
├── powerbi/
│   ├── RetailSalesDashboard.pbix
│   └── dashboard_preview.png
│
├── README.md
└── LICENSE
```

---

# 🧹 Phase 1: Data Cleaning (Python)

The raw retail sales dataset was cleaned using Python before any analysis was performed.

### Tasks Performed

- Imported the raw dataset
- Inspected data types
- Checked for missing values
- Removed duplicate records
- Converted date columns to datetime format
- Standardized categorical values
- Exported a cleaned CSV file for analysis

---

# 🗄️ Phase 2: SQL Analysis

The cleaned dataset was imported into MySQL Workbench for business analysis.

### SQL Concepts Used

- SELECT
- WHERE
- GROUP BY
- HAVING
- ORDER BY
- Aggregate Functions
- CASE Statements
- Common Table Expressions (CTEs)
- Window Functions
- LAG()
- Rolling Average
- Month-over-Month Growth

### Business Questions Answered

- What is the total revenue?
- Which product categories generate the highest sales?
- Who are the top spending customers?
- What are the monthly sales trends?
- What is the Month-over-Month (MoM) sales growth?
- Which products generate the most revenue?
- What is the average transaction value?

---

# 📊 Phase 3: Exploratory Data Analysis (Python)

After cleaning the data, exploratory data analysis (EDA) was performed to uncover patterns and trends.

### Analysis Included

- Dataset overview
- Distribution of Total Spending
- Monthly Sales Trend
- Sales by Category
- Payment Method Distribution
- Sales by Store Location
- Top Customers
- Correlation Analysis

---

# 📈 Phase 4: Power BI Dashboard

The cleaned dataset was imported into Power BI to create an interactive dashboard for business users.

### Dashboard KPIs

- Total Revenue
- Number of Customers
- Total Transactions
- Average Transaction Value

### Dashboard Visualizations

- Monthly Sales Trend
- Sales by Category
- Sales by Store Location
- Payment Method Distribution
- Top Customers

---

# 📌 Key Insights

- Generated approximately **988K** in total revenue.
- Sales were distributed across multiple product categories, indicating a diversified product portfolio.
- Online and in-store sales contributed nearly equal revenue.
- Customer spending varied, with a small number of customers contributing significantly to total revenue.
- Monthly sales fluctuated throughout the year, indicating potential seasonal trends.

---

# 💡 Business Recommendations

- Implement a loyalty program for high-value customers.
- Increase marketing efforts during months with lower sales.
- Continue investing in top-performing product categories.
- Use cross-selling and upselling strategies to increase the average transaction value.
- Analyze customer purchasing behavior by payment method for targeted promotions.

---

# 📷 Dashboard Preview

<img width="1366" height="768" alt="Screenshot (181)" src="https://github.com/user-attachments/assets/826d626a-15f8-4bc5-9649-e5afffef462e" />


---

# 📚 Skills Demonstrated

- Data Cleaning
- Data Wrangling
- SQL Querying
- Window Functions
- Time-Series Analysis
- Exploratory Data Analysis
- Data Visualization
- Dashboard Development
- Business Intelligence
- Business Reporting
- Analytical Thinking

---

# 🚀 Future Improvements

- Connect Power BI directly to MySQL.
- Build an automated ETL pipeline.
- Add sales forecasting using Python.
- Perform customer segmentation (RFM Analysis).
- Develop predictive analytics models.
