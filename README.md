<div align="center">

  <img src="images/home_page.png" alt="Starbucks Sales Analysis" width="800" style="border-radius: 12px; box-shadow: 0 4px 20px rgba(0,0,0,0.15);" />

  # ☕ Starbucks Daily Sales Analysis & Performance Dashboard
  **An End-to-End Relational Data Modeling & Business Intelligence Showcase**

  [![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)](https://www.postgresql.org/)
  [![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)](https://powerbi.microsoft.com/)
  [![SQL](https://img.shields.io/badge/SQL-Expert-00758F?style=for-the-badge&logo=sql&logoColor=white)](#)

  <p align="center">
    <b>A full-stack analytics pipeline bridging custom relational database architecture in PostgreSQL with executive-level interactive business intelligence in Power BI.</b>
  </p>

</div>

---

## 📌 Executive Summary

This project simulates enterprise-grade retail analytics for **Starbucks daily operations**. 

Starting from scratch, transactional data was structured and populated in a custom **PostgreSQL** relational database. Key business metrics—such as hourly velocity, average transaction values, customer demographics, and product distribution—were extracted and connected directly to **Power BI** to deliver real-time visual insights for store management.

---

## 📸 Dashboard Preview

### 1. Landing & Navigation
Interactive landing page offering seamless multi-tab routing across high-level overviews and transactional logs.
<div align="center">
 <img width="1064" height="598" alt="Image" src="https://github.com/user-attachments/assets/608ded46-82b4-4b7c-9b0e-2971f455178f" />
</div>

<br/>

### 2. Operational Overview
Deep-dive operational metrics including hourly revenue spikes, transaction quantity patterns, and average order values.
<div align="center">
  <img width="1064" height="598" alt="Image" src="https://github.com/user-attachments/assets/edab9f23-36b7-4824-a6af-0a4805e49b26" />
</div>

<br/>

### 3. Granular Transaction Details
Auditable transaction ledger capturing customer-level profiles, demographic age groups, categories (Food vs. Beverage), and unit pricing.
<div align="center">
 <img width="1064" height="598" alt="Image" src="https://github.com/user-attachments/assets/aacb2e3c-d6e3-43dd-8c51-bc9f3f5ae949" />
</div>

---

## 🎯 Key Performance Indicators (KPIs)

| Metric | Recorded Value | Business Insight |
| :--- | :--- | :--- |
| **Total Revenue** | **$18,330.00** | Sustained by heavy morning and late afternoon purchase peaks. |
| **Total Orders** | **52 Orders** | High-velocity basket size across core customer segments. |
| **Units Sold** | **87 Items** | Strong multi-item order conversion (`~1.67` items/order). |
| **Unique Customers** | **22 Customers** | High repeat-order frequency within a 48-hour operational window. |
| **Peak Revenue Hour** | **8:00 AM & 4:00 PM** | Commuter rush hour drives peak volume; early morning captures top sales. |

---

## 🏗️ Repository Architecture

A clean, production-ready structure separating source code, database dumps, report files, and visual documentation:

```text
Starbucks-Daily-Sales-Analysis-Dashboard/
│
├── SQL/
│   └── starbucks_sales_backup
│
├── pbix/
│   └── starbucks_sales.pbix      
│
├── images/
│   ├── home.png             # Dashboard Landing screen
│   ├── Overview.png         # Operations & Hourly Breakdown
│   └── Details.png          # Transaction table log
│                    
└── README.md                     # Project documentation
```

---

## 🛠️ Tech Stack & Methodology

### 1. Database Engineering (PostgreSQL)
* Designed a normalized transactional schema handling customer IDs, contact information, timestamps, quantity counters, and monetary values.
* Applied strict constraints (`NUMERIC(10,2)` for financial calculations to prevent floating-point inaccuracies).
* Executed aggregation queries to validate data integrity prior to ingestion.

```sql
-- Schema Definition Sample
CREATE TABLE starbucks_transactions (
    customer_id     VARCHAR(10) NOT NULL,
    customer_name   VARCHAR(100) NOT NULL,
    customer_email  VARCHAR(100),
    customer_age    INT,
    customer_phone  VARCHAR(20),
    datetime        TIMESTAMP NOT NULL,
    item_type       VARCHAR(50) NOT NULL,  -- 'Beverage' or 'Food'
    total_quantity  INT NOT NULL,
    total_order     INT NOT NULL,
    total_amount    NUMERIC(10, 2) NOT NULL
);
```

### 2. Business Intelligence & Modeling (Power BI)
* **Custom Theme:** Built around Starbucks' signature forest green and cream aesthetics for presentation consistency.
* **Calculated Measures (DAX):**
  * Average Order Value (AOV):
    $$\text{AOV} = \frac{\sum \text{total\_amount}}{\sum \text{total\_order}}$$
  * Hourly distribution buckets for sales velocity.
  * Category performance splits (Food vs. Beverage).
* **Navigation:** Implemented native button actions and page bookmarks for seamless app-like switching.

---

## 🚀 Step-by-Step Setup Guide

### Prerequisites
* [PostgreSQL 14+](https://www.postgresql.org/download/)
* [Power BI Desktop](https://powerbi.microsoft.com/desktop/)
* [Git](https://git-scm.com/)

### Step 1: Clone the Repository
```bash
git clone https://github.com/<your-username>/starbucks-sales-analysis.git
cd starbucks-sales-analysis
```

### Step 2: Initialize Database
Run the provided SQL scripts using `psql` or pgAdmin's Query Tool:
```bash
# Connect to PostgreSQL and create database
createdb -U postgres starbucks_db

# Run schema and data seeds
psql -U postgres -d starbucks_db -f sql/01_schema.sql
psql -U postgres -d starbucks_db -f sql/02_insert_data.sql
```

### Step 3: Run the Dashboard
1. Open `pbix/starbucks_sales.pbix` in Power BI Desktop.
2. The report is pre-configured with embedded data for offline viewing.
3. *(Optional)* To sync directly with your live PostgreSQL database:
   * Go to **Home** > **Transform Data** > **Data source settings**.
   * Update server host and credentials.
   * Click **Refresh**.

---

## 💡 Key Business Takeaways

1. **Morning Commute Surge:** Over 35% of daily transactions occur between 8:00 AM and 10:00 AM, dominated by beverage sales.
2. **Afternoon Snack Pairing:** Between 2:00 PM and 4:00 PM, multi-item transactions spike, indicating increased food-and-drink bundling.
3. **Target Demographic:** Core customer transactions align in the 25–35 age range, with high responsiveness to fast pick-up items.

---

## 📄 License
This project is open-source and available under the [MIT License](LICENSE).

<div align="center">
  <sub>Built with passion for clean databases and actionable data analytics.</sub>
</div>
