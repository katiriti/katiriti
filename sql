select   
   w.city as city,
    MONTH(DATE(o.date)) as month_d,   
    count (o.order_id) as counting_orders,   
    count( DISTINCT o.user_id) as counting_users,  
from warehouse as w 
left join orders as o   
   on w.warehouse_id=o.warehouse_id
where YEAR(DATE(o.date)) = 2021 

UNION ALL
select 'Total' as city,
 MONTH(DATE(o.date)) as month_d,   
    count (o.order_id) as counting_orders,   
    count( DISTINCT o.user_id) as counting_users,  
from warehouse as w 

left join orders as o   
   on w.warehouse_id=o.warehouse_id
where YEAR(DATE(o.date)) = 2021 
group by 1,2

