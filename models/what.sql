{% set my_list=get_column_from_sql('select 1 as foo','foo') %}
{{ log(my_list, info=True) }}

{% for item in my_list %}
    {{item}}
{% endfor %}