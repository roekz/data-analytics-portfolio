-- Calculate total revenue

SELECT
  ROUND(SUM(sale_price),2) AS total_revenue
FROM
  `bigquery-public-data.thelook_ecommerce.order_items`;
