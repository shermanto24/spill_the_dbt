{{ config(
    materialized='incremental',
    unique_key=['office', 'time']
) }}

with raw_weather as (
    select * from {{ ref('extract_weather_data') }}
)

select *
from raw_weather

{% if is_incremental() %}
    -- Only fetch records newer than the max timestamp currently in this target table
    where time > (select max(time) from {{ this }})
{% endif %}