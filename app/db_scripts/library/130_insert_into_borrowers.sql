-- add books to the books tables
-- INSERT INTO borrows(family_name,given_name,gender,height,weight,born_on) VALUES
  -- ('Jett', 'Joan', 'f', '65', '114', '1958-09-22');

  -- 'Rollins', 'Henry', 'm', '69', '200', '1961-02-13'

INSERT INTO borrowers (first_name, last_name)
SELECT given_name, family_name
FROM patients;
