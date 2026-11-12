-- INNER JOIN
SELECT categories.name, articles.title
FROM categories
INNER JOIN articles
ON categories.id = articles.category_id;

-- LEFT JOIN
SELECT categories.name, articles.title
FROM categories
LEFT JOIN articles
ON categories.id = articles.category_id;

-- RIGHT JOIN
SELECT categories.name, articles.title
FROM categories
RIGHT JOIN articles
ON categories.id = articles.category_id;