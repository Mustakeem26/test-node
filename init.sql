CREATE DATABASE IF NOT EXISTS mydb;
USE mydb;

CREATE TABLE address (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50),
  street VARCHAR(100),
  city VARCHAR(50),
  state VARCHAR(50),
  postal_code VARCHAR(10)
);

INSERT INTO address (name, street, city, state, postal_code)
VALUES
  ('John Doe', '123 Main St', 'New York', 'NY', '10001'),
  ('Jane Smith', '456 Elm St', 'Los Angeles', 'CA', '90001'),
  ('David Johnson', '789 Oak Ave', 'Chicago', 'IL', '60601'),
  ('Sarah Williams', '987 Pine Rd', 'San Francisco', 'CA', '94101'),
  ('Michael Brown', '321 Maple Dr', 'Houston', 'TX', '77001'),
  ('Emily Davis', '654 Cedar Ln', 'Miami', 'FL', '33101'),
  ('Daniel Wilson', '876 Birch Rd', 'Seattle', 'WA', '98101'),
  ('Olivia Taylor', '234 Walnut Ave', 'Boston', 'MA', '02101'),
  ('James Anderson', '543 Cherry St', 'Atlanta', 'GA', '30301'),
  ('Sophia Martinez', '768 Pineapple Ct', 'Denver', 'CO', '80201');