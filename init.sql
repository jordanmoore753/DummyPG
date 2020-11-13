\connect example_app; 

CREATE TABLE users (
  id serial PRIMARY KEY,
  email text
);

CREATE TABLE todos (
  id serial PRIMARY KEY,
  title text,
  description text,
  user_id int REFERENCES users(id)
);

INSERT INTO users (email) 
VALUES ('jondan@gmail.com');

INSERT INTO users (email) 
VALUES ('jn@gmail.com');

INSERT INTO todos (title, description, user_id)
VALUES ('get food', 'Get it from amazon', 1);

INSERT INTO todos (title, description, user_id)
VALUES ('PAY BILLS', 'pay the electric bill before it too late', 2);