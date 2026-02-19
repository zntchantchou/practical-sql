-- TYPES
-- timestamp 8 bytes Date and time 4713 BC to 294276 AD
-- date 4 bytes Date (no time) 4713 BC to 5874897 AD
-- time 8 bytes Time (no date) 00:00:00 to 24:00:00
-- interval 16 bytes Time interval +/− 178,000,000 years (microseconds to milleniums)
CREATE TABLE
  date_time_types (
    timestamp_column timestamp
    with
      time zone,
      interval_column interval
  )
INSERT INTO
  date_time_types
VALUES
  ('2018-12-31 01:00 EST', '2 days'),
  ('2018-12-31 01:00 -8', '1 month'),
  (
    '2018-12-31 01:00 Australia/Melbourne',
    '1 century'
  ),
  (now (), '1 week');

INSERT INTO
  date_time_types
VALUES
  ('2018-12-31 01:00 -5', '1 year');

SELECT
  timestamp_column,
  interval_column,
  timestamp_column - interval_column as new_date
FROM
  date_time_types;

-- WHY THE TIMEZONE CHANGES for the 1 century row?
SELECT
  timestamp_column,
  CAST(timestamp_column AS varchar(10))
FROM
  date_time_types;

SELECT
  numeric_column,
  CAST(numeric_column AS integer),
  CAST(numeric_column AS varchar(6))
FROM
  number_data_types;

-- invalid cast from character to integer
SELECT
  CAST(char_column AS integer)
FROM
  char_data_types;

-- SQL Error [22P02]: ERROR: invalid input syntax for type integer: "abc       "


SELECT timestamp_column::varchar(8) 
FROM date_time_types;