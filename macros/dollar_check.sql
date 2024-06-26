{% macro dollar_check(amount_input) %}
    {% set result %}
    ({{ amount_input }} * 83.4949)
    {% endset %}
    -- {% do run_query(dollar_check) %}
    {% do log("Local Pre SQL executed", info=True) %}
{% endmacro %}