{{config (materialized='table',transient =false)}}
WITH CTE AS
(select * from {{sources(SNOWFLAKE_SAMPLE_DATA.'CUSTOMER')}}
)
SELECT * FROM CTE