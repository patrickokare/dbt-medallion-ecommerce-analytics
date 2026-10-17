-- PII (name, email, address, full birth date) is dropped here; only what analytics needs is kept.
select
    id,
    created_at,
    city,
    state,
    year(birth_date) as birth_year,
    source as sales_channel
from {{ ref('bronze_users') }}
