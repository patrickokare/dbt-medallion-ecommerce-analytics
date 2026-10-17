-- Daily sales by product and customer location
select
    o.order_date,
    p.product_name,
    p.category,
    p.vendor,
    u.city,
    u.state,
    u.sales_channel,
    count(distinct o.id) as order_count,
    sum(o.quantity) as units_sold,
    sum(o.order_amount) as total_revenue
from {{ ref('silver_orders') }} o
left join {{ ref('silver_products') }} p on p.id = o.product_id
left join {{ ref('silver_users') }} u on u.id = o.user_id
group by all
