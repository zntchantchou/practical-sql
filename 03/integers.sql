-- smallint : 2 bytes
-- integer : 4 bytes
-- bigint : 8 bytes
-- AUTO INCREMENTING COUNTERPARTS (IMPLEMENTATIONS)
-- smallserial 2 bytes
-- serial 4 bytes
-- bigserial 8 bytes
-- e.g
CREATE TABLE
  people (id serial, person_name varchar(100));