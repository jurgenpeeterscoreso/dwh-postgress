--select
--    order_id,
--    sum(amount) as total_amount
--from {{ ref('stg_payments') }}
--group by 1
--having not(total_amount >= 0)

select  
    order_id
from {{ ref('stg_payments') }}
where order_id = null