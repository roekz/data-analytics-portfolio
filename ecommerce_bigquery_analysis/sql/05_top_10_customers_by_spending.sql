-- Question:
-- Who are the top 10 customers by spending based on completed sales?

SELECT
  o.user_id,
  u.first_name,
  u.last_name,
  ROUND(SUM(oi.sale_price), 2) AS total_spent
FROM
  `bigquery-public-data.thelook_ecommerce.order_items` oi
JOIN
  `bigquery-public-data.thelook_ecommerce.orders` o
ON
  oi.order_id = o.order_id
JOIN
  `bigquery-public-data.thelook_ecommerce.users` u
ON
  o.user_id = u.id
WHERE
  oi.status = "Complete"
GROUP BY
  o.user_id,
  u.first_name,
  u.last_name
ORDER BY
  total_spent DESC
LIMIT 10;
