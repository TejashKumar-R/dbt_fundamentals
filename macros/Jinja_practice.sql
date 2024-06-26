-- defining variable and using it
{% set name = "Tejash" %}
{% set todays_date = "24-06-2024" %}
{{name}} is practicing jinja {{todays_date}}

-- defining a list and accessing using index
{% set my_animals = ['dog', 'cat', 'Lion'] %}
{{my_animals [1]}}

-- looping through the list using for loop
{% for animal in my_animals %}
My favourite animal is {{animal}}
{% endfor %}

-- printing number in the range
{% for num in range(10) %}
{{num}}
{% endfor %}

-- if elif

{% set temparature=20 %}
{% if temparature<22 %}
    It's better to have a coffee
{% elif  temparature>28 %}
    It's better to have a butter milk
{% else %}
    It depends on your mood
{% endif %}
    
-- for loop with if statement
{% set number=20 %}
{% for num in range(number) %}
    {% if num != 7 and num < 10 %}
        {{num}}
    {% endif %}
{% endfor %}

-- list with for loop and if elif

{%- set inventory_list = ['carrot', 'protein bar', 'cucumber', 'mango'] -%}
{%- for product in inventory_list -%}
    {%- if product == 'protein bar' -%}
        {%- set type_of_product = 'Snack' -%}
    {%- elif product == 'mango' -%}
        {%- set type_of_product = 'fruit' -%}
    {%- else -%}
        {%- set type_of_product = 'vegetable' -%}
    {%- endif -%}
    My favourite food is {{product}} and it is a {{type_of_product}}
{% endfor %}

-- accessing a dict

{% set inventory_dict = {"name":'Tejash', "place":'Bangalore', "Area":'Chamarajpet'} %}
{{inventory_dict['name']}} is staying in {{inventory_dict['place']}} and is travelling from {{inventory_dict['Area']}}.


-- Creating a dynamic statement using values inside a dictionary

{%- 
set episode_details = {
    'epsiode1' : {
        'Series_name':'House of Dragon',
        'episode_name':'A Son for a Son',
        'streaming_date': '17-JUN-2024'
    },
    'epsiode2' : {
        'Series_name':'House of Dragon',
        'episode_name':'Un named',
        'streaming_date': '24-JUN-2024'   
    },
    'epsiode3' : {
        'Series_name':'House of Dragon',
        'episode_name':'Yet to be released',
        'streaming_date': '30-JUN-2024' 
    }
} 
-%}
{%- for epsiode,details in episode_details.items() -%}
    {%- if details['episode_name'] != 'Yet to be released'  and details['episode_name'] != 'Un named' %}
        {{epsiode}} of {{ details['Series_name'] }} is named as {{ details['episode_name'] }} and streaming on {{ details['streaming_date'] }} 
    {%- else %}
        {{epsiode}} of {{ details['Series_name'] }} and the episode name will be released soon and streaming on {{ details['streaming_date'] }} 
    {%- endif %}
{%- endfor -%}

