-- calling a dbt macros to convert a column from dollar to cent
select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    amount As amount_pre,
    -- amount is stored in cents, convert it to dollars
    {{ cents_to_dollars('amount', 4) }} as amount_post,
    created as created_at
from {{ source('stripe','payment') }}
