**Schema (PostgreSQL v18)**

    CREATE TABLE students (
      id SERIAL PRIMARY KEY,
      full_name TEXT,
      birth_date DATE,
      email TEXT
      );
      
     INSERT INTO students (full_name, birth_date, email)
     VALUES
     ('Jan Kowalski', '2000-05-14', 'jan.kowalski@example.com'),
    ('Anna Nowak', '2008-11-02', 'anna.nowak@example.com'), -- < 18 lat
    ('Piotr Wiśniewski', '1999-01-20', 'piotr.wisniewski@example.com'),
    ('Katarzyna Zielińska', '2008-07-15', 'katarzyna.zielinska@example.com'),
    ('Michał Lewandowski', '2003-03-10', 'michal.lewandowski@example.com'),
    ('Oliwia Kamińska', '2010-09-25', 'oliwia.kaminska@example.com'), -- < 18 lat
    ('Tomasz Wójcik', '1998-12-05', 'tomasz.wojcik@example.com'),
    ('Zuzanna Kaczmarek', '2006-06-18', 'zuzanna.kaczmarek@example.com');
     

---

**Query #1**

    SELECT * FROM students WHERE birth_date < CURRENT_DATE - interval '18 years';

| id  | full_name          | birth_date | email                          |
| --- | ------------------ | ---------- | ------------------------------ |
| 1   | Jan Kowalski       | 2000-05-14 | jan.kowalski@example.com       |
| 3   | Piotr Wiśniewski   | 1999-01-20 | piotr.wisniewski@example.com   |
| 5   | Michał Lewandowski | 2003-03-10 | michal.lewandowski@example.com |
| 7   | Tomasz Wójcik      | 1998-12-05 | tomasz.wojcik@example.com      |
| 8   | Zuzanna Kaczmarek  | 2006-06-18 | zuzanna.kaczmarek@example.com  |

---

[View on DB Fiddle](https://www.db-fiddle.com/f/sMQrsQW8C3SUD5G791Ao92/0)