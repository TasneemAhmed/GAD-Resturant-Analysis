SELECT name as item_name, 
       sum(cast(price  as float64)) as sales
FROM 
  {{ref('staging_food_orders')}}
group by 1
order by sales desc