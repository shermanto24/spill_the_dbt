# Challenge 03: Whatever the Weather

## Objective

Ran a Python model within dbt to fetch weather readings for different office locations and create an incremental model to store historical weather data.

## Main Tasks
* **Python API Ingestion**: Converted a Python script into a native dbt Python model (`def model(dbt, session)`) to fetch external API weather data dynamically using seed locations.
* **Expectation Testing**: Integrated the `dbt-expectations` package to validate latitude and longitude.
* **Incremental Processing**: Implemented an incremental SQL model (`is_incremental()`) to append new readings without duplicating records.
