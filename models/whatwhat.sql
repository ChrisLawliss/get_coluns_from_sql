{% set my_results=fetch('select 1 as foo, 2 as bar') %}
{{ log(my_results, info=True) }}
{% for item in my_results %}
    {{item}}, {{my_results[item]}}
{% endfor %}