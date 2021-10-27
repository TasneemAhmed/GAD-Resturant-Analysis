select 
  id,
  INITCAP(REGEXP_REPLACE(name, '[^a-z ]', '')) as customer_name,
    CASE
      WHEN length(cast(phone as string))=9 and left(cast(phone as string),2)='10' THEN '0' || '100' || right(cast(phone as string),7)
      WHEN length(cast(phone as string))=9 and left(cast(phone as string),2)='12' THEN '0' || '122' || right(cast(phone as string),7)
      WHEN length(cast(phone as string))=9 and left(cast(phone as string),2)='11' THEN '0' || '111' || right(cast(phone as string),7)
      ELSE cast(phone as string)
    END
   AS phone,
  INITCAP(country) as country,
  INITCAP(city) as city,
  age,
  gender
  
from
    {{source('Gad_food_resturant','raw_users')}}