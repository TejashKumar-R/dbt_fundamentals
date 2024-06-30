{% macro print_numbers(max_num) %}
    {% for i in range(max_num) %}
        {{ log(i, info=True) }}
    {% endfor %}
{% endmacro %}

{% macro cents_to_dollars(column_name, decimal_places=2) -%}
    round( 1.0 * {{ column_name }} / 100, {{ decimal_places }})
{%- endmacro %}

{% macro rupee_to_dollar_conversion(amount_input) %}
    ({{ amount_input }} * 83.4949)
{% endmacro %}