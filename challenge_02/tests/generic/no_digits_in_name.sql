{% test no_digits_in_name(model, column_name) %}

{{ config(severity = 'warn') }}

SELECT *
FROM {{ model }}
WHERE regexp_matches({{ column_name }}, '[0-9]')

{% endtest %}