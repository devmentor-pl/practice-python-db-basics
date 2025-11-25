CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE articles (
    id SERIAL PRIMARY KEY,
    title TEXT,
    category_id INTEGER REFERENCES categories(id)
);

INSERT INTO categories (name) VALUES
('Technologia'),
('Zdrowie'),
('Nauka'),  
('Sport');

INSERT INTO articles (title, category_id) VALUES
('Nowe odkrycie w dziedzinie AI', 1),
('Korzyści zdrowotne biegania', 2),
('Najnowsze badania nad czarnymi dziurami', 3),
('Wyniki ostatniego meczu piłkarskiego', 4),
('Recenzja najnowszego filmu', NULL),
('Postępy w technologii kwantowej', NULL),
('Jak dbać o zdrowie psychiczne', 2),
('Eksperymenty z nowymi lekami', 3),
('Analiza taktyki drużyny sportowej', 4),
('Wystawa sztuki współczesnej', NULL),
('Top 10 gier na PC', NULL);

SELECT articles.title, categories.name 
FROM articles 
INNER JOIN categories
ON articles.category_id = categories.id
ORDER BY categories.name;

SELECT articles.title, categories.name 
FROM articles
LEFT JOIN categories
ON articles.category_id = categories.id
ORDER BY categories.name;
