select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,

    {{ cents_to_dollars('payment_amount',4) }} as amount,
    created as created_at

from raw.stripe.payment_id