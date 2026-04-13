**Schema (PostgreSQL v18)**

    CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    content TEXT,
    created_at TIMESTAMP DEFAULT NOW()
    );
    
    
    INSERT INTO posts (title, content, created_at)
    VALUES
    ('Test tile', 'Some content', DEFAULT),
    ('TITLE', '', NOW() - interval '2 hours 30 minutes');

---

**Query #1**

    SELECT * FROM posts;

| id  | title     | content      | created_at                 |
| --- | --------- | ------------ | -------------------------- |
| 1   | Test tile | Some content | 2026-04-12 17:42:03.176298 |
| 2   | TITLE     |              | 2026-04-12 15:12:03.176298 |

---

[View on DB Fiddle](https://www.db-fiddle.com/f/sMQrsQW8C3SUD5G791Ao92/0)