{{ config(
    materialized='incremental',
    unique_key='order_id',
    transient=false
) }}

WITH src AS (
    SELECT * FROM {{ ref('stg_order') }}
)

SELECT 
    CAST(order_id AS INT) AS order_id,
    CAST(customer_id AS INT) AS customer_id,
    CAST(order_date AS DATE) AS order_date,
    CAST(amount AS NUMERIC(10,2)) AS amount,
    CAST(updated_at AS TIMESTAMP) AS updated_at
FROM src

{% if is_incremental() %}
WHERE updated_at > (SELECT MAX(updated_at) FROM {{ this }})
{% endif %}
