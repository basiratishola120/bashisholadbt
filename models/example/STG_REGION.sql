 {{config {materialized='table',transient=false}}
 WITH CTE 
(SELECT * FROM SNOWFLAKE_SAMPLE_DATA.REGION)
SELECT * FROM CTE