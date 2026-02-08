SELECT
  *
FROM
  teachers
WHERE
  school = 'Myers Middle School'
  AND salary BETWEEN 40000 and 50000;

SELECT
  *
FROM
  teachers
WHERE
  last_name = 'Cole'
  OR salary > 50000;