-- ALTER TABLE borrowers
-- ADD COLUMN author_id INTEGER REFERENCES authors(id);
-- CREATE INDEX ON borrowers(author_id);
--
-- ALTER TABLE borrowers
-- ADD COLUMN book_id INTEGER REFERENCES books(id);
-- CREATE INDEX ON borrowers(book_id);
--

CREATE TABLE loans(
  id SERIAL PRIMARY KEY,
  start_on DATE,
  end_on DATE,
  borrower_id INTEGER REFERENCES borrowers(id),
  book_id INTEGER REFERENCES books(id)
);
CREATE INDEX ON loans(borrower_id);
CREATE INDEX ON loans(book_id);
