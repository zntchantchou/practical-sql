SELECT
  name,
  STUSAB AS "st",
  p0010001 AS "Total Population",
  p0010003 AS "White Alone",
  p0010004 AS "Black or African American Alone",
  p0010005 AS "Am Indian/Alaska Native Alone",
  p0010006 AS "Asian Alone",
  p0010007 AS "Native Hawaiian and Other Pacific Islander Alone",
  p0010008 AS "Some Other Race Alone",
  p0010009 AS "Two or More Races",
  p0010003 + p0010004 as "Black or White"
FROM
  us_counties_2010;

SELECT
  name,
  STUSAB AS "st",
  p0010001 AS "Total Population",
  p0010003 + p0010004 + p0010005 + p0010006 + p0010007 + p0010008 + p0010009 AS "Sum of races",
  (
    p0010003 + p0010004 + p0010005 + p0010006 + p0010007 + p0010008 + p0010009
  ) - p0010001 AS "Difference",
  p0010003 AS "White Alone",
  p0010004 AS "Black or African American Alone",
  p0010005 AS "Am Indian/Alaska Native Alone",
  p0010006 AS "Asian Alone",
  p0010007 AS "Native Hawaiian and Other Pacific Islander Alone",
  p0010008 AS "Some Other Race Alone",
  p0010009 AS "Two or More Races",
  p0010003 + p0010004 as "Black or White"
FROM
  us_counties_2010;

-- PERCENTAGE OF ASIAN WITHIN COUNTY
SELECT
  name,
  stusab as "st",
  p0010001 AS "Total Population",
  p0010006 AS "Asian Alone",
  p0010004 AS "Black American",
  p0010006 / (CAST(p0010001 as numeric(15, 2))) as asians_ratio,
  (p0010006 / CAST(p0010001 as numeric(15, 2))) * 100 as asians_pct,
  (p0010004 / CAST(p0010001 as numeric(15, 2))) * 100 as black_pct
FROM
  us_counties_2010;