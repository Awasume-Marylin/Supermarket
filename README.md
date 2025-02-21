# Supermarket
### Supermarket has 3 datasets which are Invoice, Orderleads, Sales Team 
---

## Table of Contents
 - [Project Overview](#project-overview) 
 - [Data Sources](*dat-sources)
 - [Tools](*tools)
 - [Data Cleaning Preparation](*data-cleaning-preparation)
 - [Exploratory Data Analysis](*exploratory-data-analysis)
  - [Data Analysis](*data-analysis)
  - [Results/Findings](*results/findings)
  - [Recommendation](*recommendation)
  - [Limitations](*limitations)
   

### Project Overview
---
This project analysis is aimed at answering basic business questions using SQL queries. By answering this basic questions, i am able to gain insights on trends and make data driven decisions. 

![alt](https://github.com/Awasume-Marylin/Supermarket/blob/f287ef7929f877a40f144705b191777ae656e820/Images/Relational%20Database.png)

**Data Sources**

The primary datasets used came from a SUPERMARKET.csv file which contains information on the companies invoicing, orders and sales.

**Tools**

1. Microsoft Excel - For data cleaning
2. Big Query - For analysis

**Data Cleaning Preparation**

I performed the following task in the first phase of this project. 
1. Changed the data types of date and time.
2. Used Text to column to separate names to different columns.
3. Used Power Query to put the names back to one column with each name in its own row.
4. Checked for missing values

**Exploratory Data Analysis**

It involves exploring the data to answer the basic business questions, such as;
1. Total revenue per product category/meal.
2. Customers who signed up in 2019 and their total orders.
3. Meals with no orders (use LEFT JOIN and WHERE IS NULL).
4. Orders with invalid customer/product IDs (data validation).
   
**Data Analysis**

Include some commands like

```sql
SELECT 
 SUM(Order_Value) AS Total_Revenue 
FROM `creating-data-449916.supermarket.Order_Leads_dataset` 
WHERE Converted = 1;
```
**Results/Finding**

The analysis results are summarized as follows:
1. Disccovered the most profitable category/meal which is DINNER
2. There where no meals which had no order, but some meals had more orders than others

**Recommendation**

Based on my analysis i would recommend that the supermarket should invest in advertising to their target customers, the other meals (BREAKFAST and LUNCH). This is so that they can get more customers both new and old to order more of these meals and hence increase revenue.
They can also give discounts and reduce the prices to encourage more people to buy the other meals (LUNCH and BREAKFAST).

**Limitations**

Not having Power Query in microsoft excel(2013). So i had to install it to be able to complete my data cleaning process.

**Reference**

Kaggle














   
