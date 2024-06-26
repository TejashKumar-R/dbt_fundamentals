{% macro print_numbers(max_num) %}
    {% for i in range(max_num) %}
        {{ log(i, info=True) }}
    {% endfor %}
{% endmacro %}