CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE articles (
    id SERIAL PRIMARY KEY,
    title TEXT,
    category_id INT REFERENCES categories(id)
);


INSERT INTO categories (name) VALUES
('Technologia'),
('Zdrowie'),
('Podróże'),
('Kultura');


INSERT INTO articles (title, category_id) VALUES
('Nowinki ze świata AI', 1),
('Jak zadbać o zdrowy sen', 2),
('10 miejsc, które musisz odwiedzić', 3),
('Recenzja nowego filmu', 4),
('Porady dla początkujących ogrodników', NULL),
('Minimalizm w codziennym życiu', NULL);

SELECT * FROM articles
INNER JOIN categories
ON categories.id = articles.category_id;

SELECT * FROM articles
LEFT JOIN categories
ON categories.id = articles.category_id;

