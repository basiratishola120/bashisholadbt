{{ config(
    materialized='table',
    transient=false
) }}

with cte as (
    select *
    from {{ source('snowflake_sample_data', 'CUSTOMER') }}
)

select *
from cte
