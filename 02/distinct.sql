-- GET EACH UNIQUE SCHOOL NAME (check for duplicates and spelling mistakes)
SELECT distinct
  school
from
  teachers;

-- Get unique pairs of values
--  FOR EACH school, how many different salaries
SELECT distinct
  school salary,
from
  teachers;

--  FOR EACH salary, how many different schools
SELECT distinct
  salary,
  school
from
  teachers;