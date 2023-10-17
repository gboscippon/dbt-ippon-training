select * from {{ source('Norbert', 'RESTAURANTS')}}
where open_on_sunday::boolean = True