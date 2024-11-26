SELECT productName, warehouseCode, InventoryToSales, 
       CASE 
         WHEN InventoryToSales BETWEEN 0 AND 3.5 THEN "Fast-Moving"
         WHEN InventoryToSales BETWEEN 3.5 AND 6.5 THEN "Moderate-Moving"
         WHEN InventoryToSales BETWEEN 6.5 AND 8.0 THEN "Slow-Moving"
         ELSE "Excess"
	   END AS Category
FROM TotalInventory

       