SELECT * FROM dimassql.train;

#-- 3. If Product importance is high. having higest rating or being delivered on time? --#
SELECT DISTINCT
    Product_importance, 
    COUNT(*) Total
FROM
    dimassql.train
WHERE
    Customer_rating = 5
        AND Reached_on_Time = 0
        AND Product_importance = 'High'
GROUP BY Product_importance
ORDER BY Total;
#----------------------------------------------------------------------------------------#
