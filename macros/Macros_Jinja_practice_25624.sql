-- 1)print static welcome message "How are you!"

{%- macro welcome_message() -%}
    How are you!
{%- endmacro -%}

{{ welcome_message() }}

-- 2)Take input from user and print welcome message

{%- macro customized_welcome_message(name_of_person) -%}
    Hi {{ name_of_person }} How are you!
{%- endmacro -%}

{{ customized_welcome_message('Tejash') }}

-- 3)Take two digits as input and print sum

{%- macro add_two_digits(a, b) -%}
    {{ a|int + b|int }}
{%- endmacro -%}

{{ add_two_digits('1', '97') }}

-- 4)read a column of table and add the values of that column and print it

{%- macro column_sum(database_name, schema_name, table_name, column_name) -%}
select SUM({{column_name}}) AS Total_Sum FROM {{database_name}}.{{schema_name}}.{{table_name}}
{%- endmacro -%}

{{ column_sum('raw', 'stripe', 'PAYMENT', 'AMOUNT') }}

-- 5)takes value of left and right tablename and key columns that join them and get count(*) query with inner join

{%- macro table_join(database_name, schema_name, table1_name, table2_name, column_name) -%}
select COUNT(*) AS Total_rows
FROM {{database_name}}.{{schema_name}}.{{table1_name}} T1
INNER JOIN {{database_name}}.{{schema_name}}.{{table2_name}} T2
ON T1.{{column_name}} = T2.{{column_name}}
{%- endmacro -%}

{{ table_join('raw', 'Jaffle_shop', 'Customers', 'ORDERS', 'ID') }}

-- 6)write a macro to tell if number is positive negative or zero

{%- macro number_check(num) -%}
{%- set type_casted_num = num|int -%}
    {%- if type_casted_num>0 -%}
        {%- set message = "Positive" -%}
    {%- elif type_casted_num<0 -%}
        {%- set message = "Negative" -%}
    {%- else -%}
        {%- set message = "Zero" -%}
    {%- endif -%}
    {{message}}
{%- endmacro -%}

{{ number_check('-97') }}

-- alternate method
{%- macro number_check1(num) -%}
    {%- if num>0 -%}
        {%- set message = "Positive" -%}
    {%- elif num<0 -%}
        {%- set message = "Negative" -%}
    {%- else -%}
        {%- set message = "Zero" -%}
    {%- endif -%}
    {{message}}
{%- endmacro -%}

{{ number_check1(0.7) }}

-- 7)write a macro to read item from list and print the elements of list in seperate lines

{%- macro list_iterator(user_list) -%}
{%- set corrected_list = user_list.strip("[]").split(',') -%}
{%- for val in corrected_list -%}
    {{val}}
{% endfor -%}
{%- endmacro -%}

{{list_iterator("[Laptop, Mouse, chair, Internet]")}}

-- 8)to take output of column from query and concat the columns with pipe.

{%- macro column_concat(database_name, schema_name, table_name, column_name1, column_name2) -%}
select CONCAT({{column_name1}}, '|', {{column_name2}}) AS FULL_NAME
FROM {{database_name}}.{{schema_name}}.{{table_name}} 
{%- endmacro -%}

{{ column_concat('raw', 'Jaffle_shop', 'Customers', 'FIRST_NAME', 'LAST_NAME') }}
