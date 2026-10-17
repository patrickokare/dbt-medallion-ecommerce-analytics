select
    *,
    current_timestamp as _loaded_at
from {{ source('landing', 'reviews') }}
