CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    full_name TEXT,
    birth_date DATE,
    email TEXT
);

INSERT INTO students (full_name, birth_date, email) VALUES
('Anna Kowalska', '2005-06-14', 'anna.kowalska@example.com'),
('Jakub Nowak', '2007-12-01', 'jakub.nowak@example.com'),         -- ma mniej niż 18 lat
('Maria Zielińska', '2003-03-22', 'maria.zielinska@example.com'),
('Tomasz Wiśniewski', '2010-08-30', 'tomasz.wisniewski@example.com'), -- ma mniej niż 18 lat
('Olga Kaczmarek', '2000-01-11', 'olga.kaczmarek@example.com'),
('Michał Lewandowski', '2006-09-15', 'michal.lewandowski@example.com'),
('Zofia Wójcik', '2009-11-05', 'zofia.wojcik@example.com'),      -- ma mniej niż 18 lat
('Kacper Król', '1999-07-19', 'kacper.krol@example.com');

SELECT * FROM students
WHERE birth_date <= '2007-07-21';

SELECT * FROM students
WHERE birth_date <= CURRENT_DATE - INTERVAL '18 years';


