CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  full_name TEXT NOT NULL,
  birth_date DATE NOT NULL,
  email TEXT NOT NULL
);

INSERT INTO students (full_name, birth_date, email) VALUES
	('Jan Kowalski', '2006-06-13', 'Janek@gmail.com'),
    ('Stefan Nowak', '2007-04-17', 'Stefn@gmail.com'),
    ('Joana Marska', '2008-06-13', 'Joana@gmail.com'),
    ('Ania Kwiatek', '2009-11-07', 'Annia@gmail.com'),
    ('Marek Borsuk', '2010-11-13', 'Marek@gmail.com');
