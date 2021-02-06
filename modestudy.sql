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
   --NOTE: SQL uses single quotes to reference column values.
 --6. Write a query that only shows rows for which the month name is February.
SELECT *
    FROM tutorial.us_housing_units
    WHERE month_name = 'February'
 --7.Write a query that only shows rows for which the month_name starts with the letter "N" or an earlier letter in the alphabet.
 SELECT *
    FROM tutorial.us_housing_units
    WHERE month_name < 'o'
--8. Write a query that calculates the sum of all four regions in a separate column.
SELECT year,
       month,
       south,
       west,
       midwest,
       northeast,
       south + west + midwest + northeast as "Total"
    FROM tutorial.us_housing_units
--9. Write a query that returns all rows for which more units were produced in the West region than in the Midwest and Northeast combined.
SELECT year,
       month,
       south,
       west,
       midwest,
       northeast,
    FROM tutorial.us_housing_units
    WHERE west > (midwest + northeast)
--10. Write a query that calculates the percentage of all houses completed in the United States represented by each region. Only return results from the year 2000 and later.
--HINT: There should be four columns of percentages.
SELECT year,
       month,
       south/(south+west+midwest+northeast) * 100 as "South Pct",
       west/(south+west+midwest+northeast) * 100 as "West Pct",
       midwest/(south+west+midwest+northeast) * 100 as "MidWest Pct",
       northeast/(south+west+midwest+northeast) * 100 as "NE Pct"
    FROM tutorial.us_housing_units
    WHERE year <= 2000
