select * from {{ref('restaurants__turnover_ordered')}}
order by rank_r asc
limit {{var('nb_restaurants_to_show')}}
