{{config(materialized='table')}}
select category, min(nav) as Min_Nav, max(nav) as Max_Nav, nav_date as Date
from navhistory, fundcategory, mutualfund
where mutualfund.code = navhistory.code and
fundcategory.id = mutualfund.catid
group by category, nav_date
