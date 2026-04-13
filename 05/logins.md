**Schema (PostgreSQL v18)**

    DROP TABLE IF EXISTS logins;
    
    CREATE TABLE logins (
        id SERIAL PRIMARY KEY,
        user_id INT NOT NULL,
        login_time TIMESTAMP NOT NULL
    );
    
    INSERT INTO logins (user_id, login_time) VALUES
    (1, NOW() - INTERVAL '1 day'),
    (2, NOW() - INTERVAL '2 days'),
    (3, NOW() - INTERVAL '8 days'),
    (2, NOW() - INTERVAL '5 days'),
    (4, NOW() - INTERVAL '20 days'),
    (5, '2025-03-01 08:15:00'),
    (6, '2025-03-02 12:30:00'),
    (2, '2025-03-05 14:00:00'),
    (1, '2025-03-08 17:45:00'),
    (5, '2025-03-10 09:10:00'),
    (6, NOW() - INTERVAL '1 hour'),
    (3, '2025-02-15 10:00:00'),
    (1, '2025-03-15 11:20:00'),
    (5, '2025-03-20 13:00:00'),
    (3, '2025-04-01 08:00:00'),
    (4, '2025-04-10 09:00:00'),
    (2, NOW() - INTERVAL '4 days'),
    (5, NOW() - INTERVAL '6 days'),
    (1, '2025-03-04 07:50:00'),
    (3, '2025-03-09 20:20:00');
    

---

**Query #1**

    SELECT * FROM logins WHERE login_time > NOW() - INTERVAL '7 DAYS';

| id  | user_id | login_time                 |
| --- | ------- | -------------------------- |
| 1   | 1       | 2026-04-12 19:15:05.680007 |
| 2   | 2       | 2026-04-11 19:15:05.680007 |
| 4   | 2       | 2026-04-08 19:15:05.680007 |
| 11  | 6       | 2026-04-13 18:15:05.680007 |
| 17  | 2       | 2026-04-09 19:15:05.680007 |
| 18  | 5       | 2026-04-07 19:15:05.680007 |

---
**Query #2**

    SELECT * FROM logins WHERE user_id = 2;

| id  | user_id | login_time                 |
| --- | ------- | -------------------------- |
| 2   | 2       | 2026-04-11 19:15:05.680007 |
| 4   | 2       | 2026-04-08 19:15:05.680007 |
| 8   | 2       | 2025-03-05 14:00:00        |
| 17  | 2       | 2026-04-09 19:15:05.680007 |

---
**Query #3**

    SELECT *
    FROM logins
    WHERE login_time BETWEEN '2025-03-01' AND '2025-03-10 23:59:59'
    ;

| id  | user_id | login_time          |
| --- | ------- | ------------------- |
| 6   | 5       | 2025-03-01 08:15:00 |
| 7   | 6       | 2025-03-02 12:30:00 |
| 8   | 2       | 2025-03-05 14:00:00 |
| 9   | 1       | 2025-03-08 17:45:00 |
| 10  | 5       | 2025-03-10 09:10:00 |
| 19  | 1       | 2025-03-04 07:50:00 |
| 20  | 3       | 2025-03-09 20:20:00 |

---

[View on DB Fiddle](https://www.db-fiddle.com/f/gX4ntCmnHKA7TsEXEPJurQ/0)