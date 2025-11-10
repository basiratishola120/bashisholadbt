 {{config (materialized='table',transient=false)}}

 WITH CTE 
 AS
(
    SELECT * FROM SNOWFLAKE_SAMPLE_DATA.REGION
    )
SELECT * FROM CTE