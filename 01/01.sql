CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    content TEXT,
    created_at TIMESTAMP
);

INSERT INTO
    posts(title, created_at, content)
VALUES
    ('Pierwszy wpis', NOW(), 'czesc'),
    ('Drugi wpis', NOW() - INTERVAL '1 day', 'czesc'),
    ('Trzeci wpis', NOW() - INTERVAL '3 days', 'czesc');