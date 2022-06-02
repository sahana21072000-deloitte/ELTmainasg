{{config(materialized='table')}}
select nav_date, date_part(year,nav_date) as year,date_part(month,nav_date) as month, sum(nav) as nav
from navhistory
group by nav_date
order by nav_date
