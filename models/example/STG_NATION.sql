{{config (materialized='table')}}
WITH CTE 
AS
(
    SELECT * FROM SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.NATION
    )
SELECT * FROM CTE