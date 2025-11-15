 {{config (materialized='table',transient=false)}}

 WITH CTE 
 AS
(
    SELECT * FROM SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.REGION
    )
SELECT * FROM CTE