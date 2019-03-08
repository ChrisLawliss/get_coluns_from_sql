{% macro fetch(sql) %}
{# This macro returns a dictionary of the form {column_name: [results]} #}

{%- call statement('get_sql_results', fetch_result=True) -%}

{{sql}}

{%- endcall -%}

{% set sql_results={} %}
{%- if execute -%}

{% set sql_results_table = load_result('get_sql_results').table.columns %}

{% for column, column_values in sql_results_table.items() %}
{{ log(column, info=True) }}
{% do sql_results.update({column: column_values.values()}) %}

{% endfor %}

{{ log(sql_results, info=True) }}

{%- else -%}



{%- endif -%}
{{ return(sql_results) }}

{% endmacro %}
----------------------------------------

{% macro get_column_from_sql(sql, column_name) %}
{%- call statement('get_sql_results', fetch_result=True) -%}

{{sql}}

{%- endcall -%}

{%- if execute -%}

{%- set column_results = load_result('get_sql_results').table.columns[column_name].values() -%}
  
{%- else -%}

{%- set column_results = [] -%}
     
{%- endif -%}
{{ return(column_results) }}
{% endmacro %}