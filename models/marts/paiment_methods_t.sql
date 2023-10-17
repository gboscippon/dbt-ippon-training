{% set payment_methods = ["cash", "card","meal_ticket","cheque"] %}
--{% set payment_methods = dbt_utils.get_column_values(table=ref('stg_restaurants_turnover'), column='payment_method') %}
select
    identifier,
    NAME_RESTAURANT,
    {% for payment_method in payment_methods %}
    sum(case when payment_method = '{{payment_method}}' then amount end) as {{payment_method}}_amount,
    {% endfor %}
    sum(amount) as total_amount
from {{ref('stg_restaurants_turnover')}}
group by identifier,NAME_RESTAURANT
order by identifier

