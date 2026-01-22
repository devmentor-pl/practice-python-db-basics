
CREATE TABLE IF NOT EXISTS posts(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    content TEXT,
    created_at TIMESTAMP DEFAULT now()
);


INSERT INTO posts (title, content, created_at)
VALUES
    ('aktualny post', 'aktualny timestamp', NOW()),
    ('post wczoraj', 'czas wczoraj', now() - INTERVAL '1 day'),
    ('post 3 dni temu', 'czas 3 dni temu', now() - INTERVAL '3 days'),
    ('post 10 dni temu', 'czas 10 dni temu', now() - INTERVAL '10 days'),
    ('post aktualny', 'czas teraźniejszy', now()),
    ('post11 10 dni temu', 'czas 10 dni temu', now() - INTERVAL '10 days'),
    ('post22 aktualny', 'czas teraźniejszy',now()),
    ('post33 100 dni temu', 'czas 100 dni temu', now() - INTERVAL '100 days'),
    ('post44 aktualny', 'czas teraźniejszy',now()),
    ('post55 30 dni temu', 'czas 30 dni temu', now() - INTERVAL '30 days'),
    ('post66 aktualny', 'czas teraźniejszy',now());

--page1
SELECT * FROM posts
ORDER BY created_at DESC, id DESC
LIMIT 5 OFFSET 0;

--page2
SELECT * FROM posts
ORDER BY created_at DESC, id DESC
LIMIT 5 OFFSET 5;