SELECT DATE(SaleData),
       Product,  
       SUM(Amount) 
FROM Sales 
GROUP BY DATE(SaleData),
         Product 
ORDER BY SaleData, 
         Product;

