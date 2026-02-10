-- Fixed point numbers
CREATE TABLE
  rainfalls (rainfalls_mm numeric(5, 2));

-- size => variable
-- can also be declared as decimal(5, 2)
-- first parameter is the precision (how many digits in total, left and right)
-- second parameter is the 'scale', maximum number of digits after decimal point
-- example values: 1 => 1.00  1.2 => 1.20, 120.5 => 120.50
-- Floating point numbers
-- real => 4 bytes
-- double precision  => 8 bytes
CREATE TABLE
  number_data_types (
    numeric_column numeric(20, 5),
    real_column real,
    double_column double precision
  );

INSERT INTO
  number_data_types
VALUES
  (0.7, 0.7, 0.7),
  (2.13579, 2.13579, 2.13579),
  (2.1357987654, 2.1357987654, 2.1357987654);

SELECT
  *
FROM
  number_data_types;