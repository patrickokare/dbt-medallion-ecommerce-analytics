select
    p.id,
    p.created_at,
    p.title as product_name,
    p.category,
    c.description as category_description,
    p.ean,
    p.vendor,
    p.price
from {{ ref('bronze_products') }} p
left join {{ ref('product_categories') }} c
    on c.category_name = p.category
