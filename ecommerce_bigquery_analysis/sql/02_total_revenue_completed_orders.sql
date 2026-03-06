-- Question:
-- What is the total revenue generated from completed orders?

SELECT
  ROUND(SUM(sale_price), 2) AS total_revenue
FROM
  `bigquery-public-data.thelook_ecommerce.order_items`
WHERE
  status = "Complete";
