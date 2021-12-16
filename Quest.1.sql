SELECT * FROM dimassql.train;

#-- 1. What was Customer Rating? And was the product delivered on time? --#
SELECT 
    CASE
        WHEN Customer_rating < 2 THEN '1-2'
        WHEN Customer_rating BETWEEN 2 AND 3 THEN '2-3'
        WHEN Customer_rating BETWEEN 3 AND 4 THEN '3-4'
        WHEN Customer_rating > 4 THEN 'above 4'
    END AS Rating_range,
    COUNT(*) Total 
FROM
    dimassql.train
WHERE
    Reached_on_Time = 0
        AND Mode_of_Shipment = 'flight'
GROUP BY Rating_range
ORDER BY Rating_range;

SELECT 
    CASE
        WHEN Customer_rating < 2 THEN '1-2'
        WHEN Customer_rating BETWEEN 2 AND 3 THEN '2-3'
        WHEN Customer_rating BETWEEN 3 AND 4 THEN '3-4'
        WHEN Customer_rating > 4 THEN 'above 4'
    END AS Rating_range,
    COUNT(*) Total 
FROM
    dimassql.train
WHERE
    Reached_on_Time = 0
        AND Mode_of_Shipment = 'Ship'
GROUP BY Rating_range
ORDER BY Rating_range;

SELECT 
    CASE
        WHEN Customer_rating < 2 THEN '1-2'
        WHEN Customer_rating BETWEEN 2 AND 3 THEN '2-3'
        WHEN Customer_rating BETWEEN 3 AND 4 THEN '3-4'
        WHEN Customer_rating > 4 THEN 'above 4'
    END AS Rating_range,
    COUNT(*) Total 
FROM
    dimassql.train
WHERE
    Reached_on_Time = 0
        AND Mode_of_Shipment = 'Road'
GROUP BY Rating_range
ORDER BY Rating_range;
#-------------------------------------------------------------------------#
