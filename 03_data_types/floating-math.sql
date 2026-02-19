SELECT
  numeric_column * 10000000 AS "Fixed",
  real_column * 10000000 AS "Float"
FROM
  number_data_types
WHERE
  numeric_column = 0.7;

-- EXPECTED BY ME
-- REAL
-- numeric is defined as (20,5)
-- so 0.70000 * 10 000 000 => 7000000.00000
-- so 0.70000 * 10 000 000 => 7000000.00000
-- FLOAT
-- 7 000 000
SELECT
  numeric_column * 10000000 AS "Fixed",
  real_column * 10000000 AS "Float4",
  double_column * 100 000 000 000 000 AS "Float8"
FROM
  number_data_types
WHERE
  numeric_column = 0.7;

-- FIXED
-- 7000000.00000
-- FLOAT4 (real)	
-- 6999999.88079071	
-- FLOAT8 (precision)
-- 69999999999999.99