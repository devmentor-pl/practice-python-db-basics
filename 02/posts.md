**Schema (PostgreSQL v18)**

    CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    content TEXT,
    created_at TIMESTAMP DEFAULT NOW()
    );
    
    
    INSERT INTO posts (title, content, created_at)
    VALUES
    ('Welcome Post', 'This is the first post on the blog. Stay tuned for more content!', NOW()),
    
    ('Django Tips', 'Use class-based views to keep your code clean and reusable.', NOW() - interval '1 hour'),
    
    ('Flask vs Django', 'Both frameworks have their pros and cons. Choose wisely depending on your project.', NOW() - interval '3 hours'),
    
    ('Database Optimization', 'Indexes can significantly speed up your queries.', NOW() - interval '5 hours'),
    
    ('REST API Design', 'Always version your API and use proper HTTP status codes.', NOW() - interval '1 day'),
    
    ('Async in Python', 'Asyncio allows you to write concurrent code using the async/await syntax.', NOW() - interval '2 days'),
    
    ('Docker Basics', 'Containers help you standardize your development and deployment environments.', NOW() - interval '3 days'),
    
    ('Testing in Django', 'Use pytest and factory_boy for better test coverage and readability.', NOW() - interval '4 days'),
    
    ('Security Tips', 'Never store passwords in plain text. Always hash them.', NOW() - interval '5 days'),
    
    ('Empty Content Example', '', NOW() - interval '6 hours');

---

**Query #1**

    SELECT * FROM posts ORDER BY created_at DESC LIMIT 5 OFFSET 0;

| id  | title                 | content                                                                            | created_at                 |
| --- | --------------------- | ---------------------------------------------------------------------------------- | -------------------------- |
| 1   | Welcome Post          | This is the first post on the blog. Stay tuned for more content!                   | 2026-04-12 17:54:02.998213 |
| 2   | Django Tips           | Use class-based views to keep your code clean and reusable.                        | 2026-04-12 16:54:02.998213 |
| 3   | Flask vs Django       | Both frameworks have their pros and cons. Choose wisely depending on your project. | 2026-04-12 14:54:02.998213 |
| 4   | Database Optimization | Indexes can significantly speed up your queries.                                   | 2026-04-12 12:54:02.998213 |
| 10  | Empty Content Example |                                                                                    | 2026-04-12 11:54:02.998213 |

---
**Query #2**

    SELECT * FROM posts ORDER BY created_at DESC LIMIT 5 OFFSET 5;

| id  | title             | content                                                                       | created_at                 |
| --- | ----------------- | ----------------------------------------------------------------------------- | -------------------------- |
| 5   | REST API Design   | Always version your API and use proper HTTP status codes.                     | 2026-04-11 17:54:02.998213 |
| 6   | Async in Python   | Asyncio allows you to write concurrent code using the async/await syntax.     | 2026-04-10 17:54:02.998213 |
| 7   | Docker Basics     | Containers help you standardize your development and deployment environments. | 2026-04-09 17:54:02.998213 |
| 8   | Testing in Django | Use pytest and factory_boy for better test coverage and readability.          | 2026-04-08 17:54:02.998213 |
| 9   | Security Tips     | Never store passwords in plain text. Always hash them.                        | 2026-04-07 17:54:02.998213 |

---

[View on DB Fiddle](https://www.db-fiddle.com/f/sMQrsQW8C3SUD5G791Ao92/0)