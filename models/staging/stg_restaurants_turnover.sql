{{
  config(
    materialized = "table"
  )
}}

select 
rest.IDENTIFIER,
name as NAME_RESTAURANT,
amount,
payment_method
from {{ref('base_restaurant')}} rest left join {{ref('base_orders')}} ord 
on rest.IDENTIFIER = ord.RESTAURANT_IDENTIFIER