# Challenge 02: Library Loan Issues

## Objective

Identified and fixed issues in a dbt model that aggregates late fees for overdue library loans by writing and running tests. Compared the fixed model's output with a provided CSV seed using the `dbt-utils` package.

## Main Tasks
* **Staging Models**: Refactored raw data into clean staging models (`stg_books`, `stg_members`, `stg_loans`).
* **Custom Testing**: Developed custom generic tests to validate data quality.
* **Output Validation via Packages**: Integrated `dbt-utils` to run additional tests comparing my model to the solution file.
