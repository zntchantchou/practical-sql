-- ADD, SUBTRACT, MULTIPLY, DIVIDE are part of the SQL ansi standard
-- INTEGER + INTEGER => INTEGER
-- NUMERIC + ANY TYPE => NUMERIC
-- FLOATING POINT (real, double) + ANY TYPE => FLOATING POINT
-- Exponentiation/Factorial => always floating point

SELECT 2 + 2;
SELECT 9 - 1;
SELECT 3 * 4;

-- DIVISON and MODULO

SELECT 11 / 6; 
-- result => 1 (quotient as integer)
SELECT CAST(11 as numeric(3,1)) / 6; 
-- result => 1.8333 as numeric
SELECT 11 % 6; 
-- result => 5 as integer
SELECT 11 / 6.0;
-- result => 1.8333 as numeric


-- EXPONENTIATION, ROOTS, FACTORIALS
SELECT 3 ^ 4;
SELECT |/ 10;
SELECT sqrt(10);
SELECT ||/ 10;
-- FACTORIAL => 4 * 3 * 2 * 1
SELECT 4 !;

-- ORDER OF PRECEDENCE

SELECT 7 + 8 * 4;
-- 60
SELECT (7 + 8) * 4;
-- 39

SELECT 3 ^ 3 - 1;
-- 26
SELECT 3 ^ (3 - 1);
-- 9