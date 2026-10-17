select
    id,
    cast(created_at as date) as order_date,
    user_id,
    product_id,
    quantity,
    unit_price,
    {{ multiply_columns_and_round('quantity', 'unit_price') }} as order_amount
from {{ ref('bronze_orders') }}
