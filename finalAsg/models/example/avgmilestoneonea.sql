{{config(materialized='table')}}
select f.category as scheme,date_part(Month, nav_date)as Month,date_part(Year, nav_date)as Year, avg(nav)as navavg,avg(repurchase)as repavg, avg(sale)saleavg
from "FINALASG"."MINI1"."FUNDCATEGORY" f,"FINALASG"."MINI1"."MUTUALFUND" m, "FINALASG"."MINI1"."NAVHISTORY" n
where f.id = m.catid and m.code = n.code
group by f.category, date_part(Year, nav_date), date_part(Month, nav_date)
