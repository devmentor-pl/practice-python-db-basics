


CREATE TABLE IF NOT EXISTS posts(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    content TEXT,
    created_at TIMESTAMP DEFAULT now()
);

INSERT INTO posts (title, content)
VALUES
    ('aktualny post', 'aktualny timestamp');

INSERT INTO posts (title, content, created_at)
VALUES
    ('post wczoraj', 'czas wczoraj', now() - INTERVAL '1 day'),
    ('post 3 dni temu', 'czas 3 dni temu', now() - INTERVAL '3 days'),
    ('post 10 dni temu', 'czas 10 dni temu', now() - INTERVAL '10 days');