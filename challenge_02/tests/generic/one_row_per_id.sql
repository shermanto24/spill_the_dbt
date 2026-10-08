{% test one_row_per_id(model, column_name) %}

SELECT 
    {{ column_name }},
    count({{ column_name }}) as cnt
FROM {{ model }}
GROUP BY {{ column_name }}
HAVING cnt > 1

{% endtest %}