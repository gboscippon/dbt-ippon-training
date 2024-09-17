select 
count(*) count_item
from {{ref('fuzzy_wuzzy')}} fuzzy_w
left join {{ref('base_dishes')}} dis on dis.name = fuzzy_w.dish_name
where 
date(created_at) = '2022-08-01' and 
dis.identifier = 2