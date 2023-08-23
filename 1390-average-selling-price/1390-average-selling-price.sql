 SELECT P.product_id , ROUND(SUM(price*units*1.0)/SUM(units) , 2 ) average_price
 FROM Prices P 
 INNER JOIN UnitsSold U ON U.product_id = P.product_id 
 AND U.purchase_date BETWEEN P.start_date AND P.end_date
 GROUP BY P.product_id;