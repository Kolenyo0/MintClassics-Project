SELECT warehousecode, productLine, SUM(quantityOrdered) AS InventorySold,
	   SUM(quantityOrdered * priceEach) AS Sales
FROM ProductsOrdered
GROUP BY productLine, warehouseCode
ORDER BY warehouseCode ASC