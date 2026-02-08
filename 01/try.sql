CREATE TABLE
  category (id bigserial, name varchar(50))
CREATE TABLE
  animal (
    id bigserial,
    category_id bigserial FOREIGN KEY,
    name varchar(50),
    avg_weight numeric,
    avg_height numeric,
    avg_life_expectancy numeric
  )
INSERT into
  animal (
    category_id,
    name,
    avg_weight,
    avg_height,
    avg_life_expectancy
  )
VALUES
  (1, mammals, 8, 15, 2)