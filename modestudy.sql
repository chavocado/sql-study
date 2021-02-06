--SELECT SELECT
-- 0. Get all the columns
SELECT *
    FROM tutorial.us_housing_units

-- 1. Get all columns without using *
SELECT year,
       month,
       month_name,
       south,
       west,
       midwest,
       northeast
  FROM tutorial.us_housing_units

-- 2. Write a query to select all of the columns in tutorial.us_housing_units and rename them so that their first letters are capitalized.
SELECT year as "Year",
       month as "Month",
       month_name as "Month Name",
       south as "South",
       west as "West",
       midwest as "Midwest",
       northeast as "Northeast"
  FROM tutorial.us_housing_units

--SQL LIMIT
-- 3. Write a query that uses the LIMIT command to restrict the result set to only 15 rows.
SELECT *
    FROM tutorial.us_housing_units
    LIMIT 15

--SQL WHERE clause
-- NOTE: the clauses always need to be in this order: SELECT, FROM, WHERE.
--SQL Comparison Operators (=,<,>,!=,<>,<=,>=)
--4. Did the West Region ever produce more than 50,000 housing units in one month?
SELECT *
  FROM tutorial.us_housing_units
 WHERE west > 50
--5. Did the South Region ever produce 20,000 or fewer housing units in one month?
SELECT *
  FROM tutorial.us_housing_units
  WHERE west <= 20 