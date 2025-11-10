{{config (materialized='table')}}
WITH CTE 
AS
(
    SELECT * FROM SNOWFLAKE_SAMPLE_DATA.NATION
    )
SELECT * FROM CTE