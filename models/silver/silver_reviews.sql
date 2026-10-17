select
    id,
    cast(created_at as date) as review_date,
    product_id,
    rating
from {{ ref('bronze_reviews') }}
where rating between 1 and 5
