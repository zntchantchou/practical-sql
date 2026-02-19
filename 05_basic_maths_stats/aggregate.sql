-- TOTAL POPULATION by summing counties
SELECT
  SUM(p0010001) as "Counties sum"
FROM
  us_counties_2010;

-- COUNTY AVG
SELECT
  round(avg(p0010001), 0) as "Counties avg"
FROM
  us_counties_2010;