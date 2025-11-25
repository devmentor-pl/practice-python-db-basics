CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    content TEXT,
    created_at TIMESTAMP
);

INSERT INTO
    posts(title, created_at, content)
VALUES
    ('Pierwszy wpis', NOW()- INTERVAL '17 days', 'czesc'),
    ('Drugi wpis', NOW() - INTERVAL '10 days', 'czesc'),
    ('Trzeci wpis', NOW() - INTERVAL '13 days', 'czesc'),
    ('4 wpis', NOW() - INTERVAL '8 days', 'czesc'),
    ('5 wpis', NOW() - INTERVAL '7 days', 'czesc'),
    ('6 wpis', NOW() - INTERVAL '5 days', 'czesc'),
    ('7 wpis', NOW() - INTERVAL '4 days', 'czesc'),
    ('8 wpis', NOW() - INTERVAL '5 days', 'czesc'),
    ('9 wpis', NOW() - INTERVAL '1 day', 'czesc'),
    ('10 wpis', NOW(), 'czesc');
    

SELECT * FROM posts ORDER BY created_at DESC LIMIT 5 ;

SELECT * FROM posts ORDER BY created_at DESC LIMIT 5 OFFSET 5;