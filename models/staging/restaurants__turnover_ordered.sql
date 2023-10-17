with t as (
select
NAME_RESTAURANT, 
sum(amount) CA
from 
{{ref('stg_restaurants_turnover')}}
group by NAME_RESTAURANT
)
select *
,RANK () OVER (order by CA desc ) as rank_r
from t
