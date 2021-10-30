select 
  order_id as order_id,
  customer_id as customer_number,
  REGEXP_REPLACE(lower(item_name), '[^a-z]', '') as name,
  cast(REGEXP_REPLACE(item_price, '[^0-9]', '') as float64) as price,
  date as order_date
from 
  {{ source('Gad_food_resturant','raw_food_orders') }}

