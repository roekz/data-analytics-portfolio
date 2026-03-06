-- Question:
-- Which product categories generate the most revenue from completed sales?

SELECT
  p.category,
  ROUND(SUM(oi.sale_price), 2) AS revenue
FROM
  `bigquery-public-data.thelook_ecommerce.order_items` oi
JOIN
  `bigquery-public-data.thelook_ecommerce.products` p
ON
  oi.product_id = p.id
WHERE
  oi.status = "Complete"
GROUP BY
  p.category
ORDER BY
  revenue DESC;
