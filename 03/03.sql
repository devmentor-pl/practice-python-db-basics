CREATE TABLE students(
    id SERIAL PRIMARY KEY,
    full_name TEXT,
    birth_date DATE,
    email TEXT
);

INSERT INTO 
students (full_name, birth_date, email)
VALUES
('Marcin Kowalski', '1998-05-25', 'przklad@mail.com' ),
('Krzysztof Kowalski', '1999-12-30', 'przklad@mail.com' ),
('Michał Kowalski', '1978-05-22', 'przklad@mail.com' ),
('Kamila Kowalska', '1988-03-04', 'przklad@mail.com' ),
('Tomasz Kowalski', '1990-11-11', 'przklad@mail.com' ),
('Karolina Kowalska', '2009-03-22', 'przklad@mail.com' ),
('Mateusz Kowalski', '2010-05-25', 'przklad@mail.com' ),
('Anna Kowalska', '2007-05-25', 'przklad@mail.com' ),
('Ewa Kowalska', '2001-01-25', 'przklad@mail.com' );

SELECT *,EXTRACT(YEAR FROM AGE(CURRENT_DATE, birth_date)) AS wiek FROM students
WHERE EXTRACT( YEAR FROM AGE(CURRENT_DATE, birth_date)) >= 18;