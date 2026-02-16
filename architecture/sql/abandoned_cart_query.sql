/* 
Purpose:
Identify customers who added items to cart but did not complete checkout 
within 2 hours of last activity.

Used as entry source for Abandoned Cart Journey.
*/

SELECT
    c.ContactKey,
    c.EmailAddress,
    cart.CartID,
    cart.ProductName,
    cart.CartValue,
    cart.LastUpdated AS CartLastUpdated,
    GETDATE() AS QueryRunTime
FROM
    Cart_Data cart
INNER JOIN
    Contact_Salesforce c
    ON cart.ContactKey = c.ContactKey
LEFT JOIN
    Order_Data o
    ON cart.ContactKey = o.ContactKey
    AND cart.CartID = o.CartReferenceID
WHERE
    cart.Status = 'Active'
    AND o.OrderID IS NULL
    AND cart.LastUpdated <= DATEADD(hour, -2, GETDATE())
    AND c.IsActive = 1
