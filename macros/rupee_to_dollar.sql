{% macro rupee_to_dollar_conversion(amount_input) %}
    ({{ amount_input }} * 83.4949)
{% endmacro %}

-- {% macro status_case_modification(status_col) %}
--     CASE WHEN status_col='returned' THEN UPPER(status_col)
--     ELSE status_col
--     END AS status_col
-- {% endmacro %}