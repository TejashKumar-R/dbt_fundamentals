with orders as(
    SELECT * FROM {{ ref("stg_jaffle_shop__orders") }}
),

daily as (
    SELECT
        order_date,
        count(*) as order_num
    from orders
    group by order_date
)
select * from daily