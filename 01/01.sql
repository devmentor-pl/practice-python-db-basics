CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    content TEXT,
    created_at TIMESTAMP
);

INSERT INTO posts (title, content, created_at)
VALUES ('Tytuł1', 'zawartość', NOW());
INSERT INTO posts (title, content, created_at)
VALUES ('Tytuł2', 'zawartość', NOW() - INTERVAL '3 days');
INSERT INTO posts (title, content, created_at)
VALUES ('Tytuł3', 'zawartość', NOW() - INTERVAL '1 year');

