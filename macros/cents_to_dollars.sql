{% macro cents_to_dollars(column_name,decimal_places) -%}
round({{ column_name }} / 100, {{ decimal_places }})
{%- endmacro %}