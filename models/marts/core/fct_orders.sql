with payments as (
    select * from {{ ref('stg_payments')}}
),

orders as (
    select * from {{ ref('stg_orders')}}
),

order_payments as (
    select 
        order_id,
        sum(coalesce(case when payment_status = 'success' then amount end,0)) as amount
    from payments
    group by order_id
)

select 
    o.order_id,
    o.customer_id,
    o.order_date,
    amount
from orders o 
join order_payments p on o.order_id = p.order_id