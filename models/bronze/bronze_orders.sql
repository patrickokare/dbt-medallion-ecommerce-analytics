-- Raw orders, loaded incrementally. Re-reading a 3-day window catches late-arriving
-- rows; the unique_key makes the overlap safe (rows are replaced, not duplicated).
{{
    config(
        materialized='incremental',
        unique_key='id'
    )
}}

select
    *,
    current_timestamp as _loaded_at
from {{ source('landing', 'orders') }}

{% if is_incremental() %}
where created_at >= (select max(created_at) - interval 3 day from {{ this }})
{% endif %}
