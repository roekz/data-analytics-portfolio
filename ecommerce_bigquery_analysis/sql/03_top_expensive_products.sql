-- Question:
-- What are the top 5 most expensive products sold?
SELECT
  p.name AS product_name,
  p.category,
  oi.sale_price
FROM
  `bigquery-public-data.thelook_ecommerce.order_items` oi
JOIN
  `bigquery-public-data.thelook_ecommerce.products` p
ON
  oi.product_id = p.id
ORDER BY
  oi.sale_price DESC
LIMIT 5
