-- Average review rating per product per day
select
    r.review_date,
    r.product_id,
    p.product_name,
    count(*) as review_count,
    round(avg(r.rating), 2) as avg_rating
from {{ ref('silver_reviews') }} r
left join {{ ref('silver_products') }} p on p.id = r.product_id
group by all
