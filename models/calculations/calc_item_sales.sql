SELECT name as item_name, 
       sum(price) as sales
FROM 
  {{ref('staging_food_orders')}}
group by 1
order by sales desc