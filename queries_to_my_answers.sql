-- Check for meals with no orders	
SELECT orders.Order_Id, invoice.Type_of_Meal 
FROM `creating-data-449916.supermarket.Invoices_dataset`AS invoice 
LEFT JOIN `creating-data-449916.supermarket.Order_Leads_dataset`AS orders 
ON orders.Order_Id = invoice.Type_of_Meal 
WHERE invoice.Type_of_Meal is NULL 
-
-

--check for customers who signed up in 2019 and their total orders 

SELECT Participants AS Customers, 
 COUNT(Order_Id) AS Total_Orders,
FROM  `creating-data-449916.supermarket.Invoices_dataset`
WHERE EXTRACT(Year from Date_of_Meal) = 2019
GROUP BY Participants;
	
-
-
-- Total revenue 
	
SELECT 
 SUM(Order_Value) AS Total_Revenue 
FROM `creating-data-449916.supermarket.Order_Leads_dataset` 
WHERE Converted = 1;
-

-- Orders with invalid Customer ID

SELECT
  Company_Id,
 COUNT(Order_Id) AS Orders
FROM `creating-data-449916.supermarket.Invoices_dataset` 
WHERE Company_Id is NULL
GROUP BY Company_Id;

