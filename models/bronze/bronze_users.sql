{{ config(tags=['contains_pii']) }}

select
    *,
    current_timestamp as _loaded_at
from {{ source('landing', 'users') }}
