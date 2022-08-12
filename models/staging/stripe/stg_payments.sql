select 
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status as payment_status,
    {{ cents_to_dollars('amount',2) }} as amount
from {{ source('stripe','payment')}}