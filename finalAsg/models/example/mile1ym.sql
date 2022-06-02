{{config(materialized='table')}}
select nav_date,year,month,nav,
sum(nav) over(partition by year order by nav_date) as ytd,
sum(nav) over(partition by year, month order by nav_date) as mtd
from "FINALASG"."MINI1"."MILE1SUB1EXTRA"
