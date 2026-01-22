CREATE TABLE IF NOT EXISTS students(
    id SERIAL PRIMARY KEY,
    full_name TEXT NOT NULL,
    birth_date DATE not NULL,
    email TEXT
);

INSERT INTO students (full_name, birth_date, email)
VALUES
('Anna Kowalska',        '2000-03-15', 'anna.kowalska@example.com'),
('Piotr Nowak',          '1995-07-22', 'piotr.nowak@example.com'),
('Katarzyna Wiśniewska', '1988-11-02', 'k.wisniewska@example.com'),
('Michał Zieliński',     '2006-05-10', 'michal.zielinski@example.com'),
('Julia Kaczmarek',      '2010-09-18', 'julia.kaczmarek@example.com'),
('Tomasz Lewandowski',   '1992-01-30', 't.lewandowski@example.com'),
('Natalia Dąbrowska',    '2008-12-05', 'natalia.dabrowska@example.com'),
('Paweł Wójcik',         '1980-06-14', 'pawel.wojcik@example.com'),
('Zuzanna Kamińska',     '2012-04-27', 'z.kaminska@example.com'),
('Adam Mazur',           '1999-08-09', 'adam.mazur@example.com'),
('Oliwia Piotrowska',    '2005-02-21', 'oliwia.piotrowska@example.com'),
('Jakub Grabowski',      '2014-10-03', 'jakub.grabowski@example.com');


SELECT * FROM students
WHERE birth_date <= (CURRENT_DATE - INTERVAL '18 years');