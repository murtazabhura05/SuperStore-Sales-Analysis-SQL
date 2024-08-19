-- What are total sales and total profits over a period?
SELECT SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit FROM store;
 
-- What are total sales and total profits over the years?
SELECT orderYear, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit FROM store
GROUP BY orderYear
ORDER BY orderYear;

-- What are total sales and total profits over a months?
SELECT orderMonth, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit FROM store
GROUP BY orderMonth
ORDER BY Total_Sales DESC, Total_Profit DESC;

-- What are total sales and total profits over the region?
SELECT region, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit  FROM store
GROUP BY region
ORDER BY Total_Sales DESC, Total_Profit DESC;

-- What are total sales and total profits over the Country and State?
SELECT Country, State, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit  FROM store
GROUP BY Country,State 
ORDER BY Total_Sales DESC, Total_Profit DESC
LIMIT 3;

-- What are total sales and total profits over the City?
SELECT City, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit  FROM store
GROUP BY City
ORDER BY Total_Sales DESC, Total_Profit DESC
LIMIT 3;

-- What are total sales and total profits by Ship Mode?
SELECT ShipMode, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit  FROM store
GROUP BY ShipMode
ORDER BY Total_Sales DESC, Total_Profit DESC;

-- Which Products Category have highest number of Sales and Profits?
SELECT Category AS ProductCategory, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit  FROM store
GROUP BY ProductCategory
ORDER BY Total_Sales DESC, Total_Profit DESC;

-- Which Products sub Category have highest number of Sales and Profits?
SELECT SubCategory, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit  FROM store
GROUP BY SubCategory
ORDER BY Total_Sales DESC, Total_Profit DESC
LIMIT 5;

-- Which Segment have highest number of Sales and Profits?
SELECT Segment, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit  FROM store
GROUP BY Segment
ORDER BY Total_Sales DESC, Total_Profit DESC;

-- Which Customers have highest number of Sales and Profits?
SELECT DISTINCT(CustomerID), SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit  
FROM store
GROUP BY CustomerID
ORDER BY Total_Sales DESC, Total_Profit DESC;
