DROP TABLE students;
DROP TABLE houses;

CREATE TABLE students(
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  age INT,
  house VARCHAR(255),
  id SERIAL PRIMARY KEY
);

CREATE TABLE house (
  name VARCHAR(255),
  id SERIAL PRIMARY KEY,
  logo VARCHAR(255)
);
