with payments as (
    select * from {{ ref('stg_payments')}}
)

select 
    order_id,
    sum(amount) as total_amount

from payments
GROUP BY 1
having total_amount < 0