-- https://sqlite.org/windowfunctions.html
-- https://datalemur.com/sql-tutorial/sql-aggregate-window-functions
-- https://www.postgresql.org/docs/current/tutorial-window.html
-- https://cloud.google.com/bigquery/docs/reference/standard-sql/window-function-calls
-- https://medium.com/@manutej/mastering-sql-window-functions-guide-e6dc17eb1995
-- https://www.datacamp.com/cheat-sheet/sql-window-functions-cheat-sheet
-- https://www.geeksforgeeks.org/sql/window-functions-in-sql/
-- https://mode.com/sql-tutorial/sql-window-functions

-- calculate the running total of SaleAmount for each row ordered by SaleDate
-- new column called RunningTotal
-- (RunningTotal.curr = SaleAmount.prev + SaleAmount.curr)
SELECT 
  SaleID, 
  Salesperson, 
  SaleAmount, 
  SaleDate, 
  SUM(SaleAmount) OVER (ORDER BY SaleDate) AS RunningTotal
FROM Sales;
