SELECT
  first_name,
  last_name,
  school
FROM
  teachers
WHERE
  school = 'Myers Middle School';

SELECT
  first_name,
  last_name,
  school
FROM
  teachers
WHERE
  school != 'Myers Middle School';

SELECT
  first_name,
  last_name,
  salary school
FROM
  teachers
WHERE
  salary > 40000;

SELECT
  first_name,
  last_name,
  salary school
FROM
  teachers
WHERE
  last_name LIKE '%Rey%';

SELECT
  first_name,
  last_name,
  salary school
FROM
  teachers
WHERE
  last_name ILIKE '%rey%';

-- Case insensitive
SELECT
  first_name,
  last_name,
  salary school
FROM
  teachers
WHERE
  last_name NOT ILIKE '%rey%';

-- ILike is postgres only
SELECT
  first_name,
  last_name,
  salary school
FROM
  teachers
WHERE
  last_name IN ('Roush', 'Diaz');

SELECT
  first_name,
  last_name,
  salary school,
  hire_date
FROM
  teachers
WHERE
  hire_date < '2000-01-01';

SELECT
  first_name,
  last_name,
  salary school,
  hire_date
FROM
  teachers
WHERE
  salary BETWEEN 30000 AND 40000;