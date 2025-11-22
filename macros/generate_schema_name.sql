{%macro generate_schema_name(customer_schema_name, node) %}

{{customer_schema_name if customer_schema_name is not none else target.schema}}

{%endmacro %}