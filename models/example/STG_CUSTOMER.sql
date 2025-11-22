{{ config(
    materialized='table',
    transient=false
) }}

with cte as (
    select *
    from {{ sources('snowflake_sample_data', 'CUSTOMER') }}
)

select *
from cte
