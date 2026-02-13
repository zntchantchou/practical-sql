CREATE TABLE
  eagle_watch (
    number_of_eagles integer,
    observation_date date,
    observer_name varchar(50)
    -- the number represent the largest number of characters possible
    -- memory is only allocated as needed
    -- unlike in the case of char(50) which would add blank spaces if length is below the max
  )
CREATE TABLE
  char_data_types (
    varchar_column varchar(10),
    char_column char(10),
    text_column text
  );

INSERT INTO
  char_data_types
VALUES
  ('abc', 'abc', 'abc'),
  ('defghi', 'defghi', 'defghi');

COPY char_data_types TO '/Users/macbook/dev/practical_sql/03/filedir/data.txt'
WITH
  (FORMAT CSV, HEADER, DELIMITER '|');

CREATE TABLE
  try_date_test (varchar_column varchar(50));

INSERT INTO
  try_date_test
VALUES
  (' 4 / / 2017 ');

SELECT
  varchar_column,
  CAST(varchar_column AS timestamp) as casted
FROM
  try_date_test;