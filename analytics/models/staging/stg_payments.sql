with payments as (

    select 
        id as payment_id,
        order_id,
        payment_method,
        amount/100 as amount

    from {{ source('analytics','raw_payments') }}

)

select * from payments