{% macro mackable_source(dbt_source,dbt_table,dbt_seed) %}
    {% if target.name == "ci" %} 
    {{ref(dbt_seed)}}
    {%else %} 
    {{source(dbt_source, dbt_table)}}
    {%endif%} 
{% endmacro %} 