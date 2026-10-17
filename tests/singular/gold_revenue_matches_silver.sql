-- Gold must not lose or double count revenue: its total has to equal Silver's.
with silver as (
    select round(sum(order_amount), 2) as revenue from {{ ref('silver_orders') }}
),

gold as (
    select round(sum(total_revenue), 2) as revenue from {{ ref('gold_sales__daily') }}
)

select silver.revenue as silver_revenue, gold.revenue as gold_revenue
from silver cross join gold
where silver.revenue <> gold.revenue
