SET @FromDate:='2017-01-02';
SET @ToDate:='2017-01-03';
SELECT DATE(SaleData),
       Product,  
       SUM(Amount) 
FROM Sales 
WHERE DATE(SaleData) BETWEEN @FromDate AND @ToDate
GROUP BY Product, 
         DATE(SaleData) 
ORDER BY DATE(SaleData), 
         Product;
