SELECT * FROM dimassql.train;

#-- 2. Is Customer query is being answered? --#
SELECT 
    SUM(IF(Gender = 'M', 1, 'NULL')) AS MaleCustomer_answered,
    SUM(IF(Gender = 'F', 1, 'NULL')) AS FemaleCustomer_answered
FROM
    dimassql.train
WHERE
    Customer_care_calls IN (2, 3, 4);
    
SELECT 
    SUM(IF(Gender = 'M', 1, 'NULL')) AS MaleCustomer_answered,
    SUM(IF(Gender = 'F', 1, 'NULL')) AS FemaleCustomer_answered
FROM
    dimassql.train
WHERE
    Customer_care_calls IN (5, 6, 7);
#---------------------------------------------#