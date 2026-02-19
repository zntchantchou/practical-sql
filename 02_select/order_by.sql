SELECT
  first_name,
  last_name,
  school,
  salary
ORDER BY
  salary;

-- Default is ASC for ASCENDING order
SELECT
  first_name,
  last_name,
  school,
  salary
from
  teachers
ORDER BY
  salary DESC;

SELECT
  first_name,
  last_name,
  salary hire_date
from
  teachers
ORDER BY
  salary DESC,
  hire_date ASC;