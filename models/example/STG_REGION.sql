{{ config(
    materialized='table',
    transient=false
) }}

with cte as (
    select *
    from {{ source('snowflake_sample_data', 'REGION') }}
)

select *
from cte
