SELECT 
   order_id, customer_id,
   regexp_replace(lower(item_name),'[^a-z]','') as item_name,
   cast(regexp_replace(item_price,'[^0-9]','') as FLOAT64)  as item_price
FROM 
   dataanalysis-1stmeeting.Gad_food_resturant.raw_food_orders;