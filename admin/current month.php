<?php
include("include/config.php");
 
SELECT 
    MONTH(orderDate) month,
    ROUND(SUM(quantityOrdered * priceEach)) subtotal
FROM
    orders
        INNER JOIN
    orderdetails USING (orderNumber)
WHERE
    YEAR(orderDate) = 2004
GROUP BY month;
?>