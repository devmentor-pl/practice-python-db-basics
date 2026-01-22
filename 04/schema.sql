CREATE TABLE IF NOT EXISTS categories (
    id SERIAL PRIMARY KEY,
    category_name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS articles (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    category_id INT REFERENCES categories(id)
);

INSERT INTO categories (category_name)
VALUES
    ('Python'),
    ('Bazy danych'),
    ('Backend');

INSERT INTO articles (title, category_id)
VALUES
    ('Wprowadzenie do Pythona', 1),
    ('PostgreSQL – podstawy', 2),
    ('REST API w praktyce', 3),
    ('Czym jest programowanie?', NULL),
    ('Debugowanie krok po kroku', NULL);



SELECT articles.title, categories.category_name, categories.id
FROM articles
INNER JOIN categories
ON categories.id = articles.category_id;

SELECT articles.title, categories.category_name, categories.id
FROM articles
LEFT JOIN categories
ON categories.id = articles.category_id