with customers as (
    SELECT *
    FROM {{ ref("stg_jaffle_shop__customers") }}
),
orders as(
    SELECT *
    FROM {{ ref("stg_jaffle_shop__orders") }}
)
SELECT *
FROM orders o
WHERE o.customer_id NOT IN (SELECT DISTINCT(customer_id) FROM customers c )