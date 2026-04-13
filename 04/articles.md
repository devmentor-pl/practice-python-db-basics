**Schema (PostgreSQL v18)**

    CREATE TABLE categories (
      id SERIAL PRIMARY KEY,
      name TEXT
      );
      
    CREATE TABLE articles (
      id SERIAL PRIMARY KEY,
      title TEXT NOT NULL,
      category_id INT REFERENCES categories(id)
    );
      
      
     INSERT INTO categories (name)
     VALUES 
     ('Warzywa'),
    ('Owoce'),
    ('Napoje'),
    ('Nabiał'),
    ('Mięso'),
    ('Pieczywo');
    
    INSERT INTO articles (title, category_id)
    VALUES
    ('Marchewka – wartości odżywcze', 1),
    ('Brokuły – dlaczego warto jeść', 1),
    
    ('Najlepsze owoce na lato', 2),
    ('Czy banany są zdrowe?', NULL),
    
    ('Kawa czy herbata – co wybrać?', 3),
    ('Najlepsze napoje na upały', 3),
    
    ('Mleko – fakty i mity', 4),
    ('Jogurt naturalny – właściwości', NULL),
    
    ('Czy czerwone mięso jest zdrowe?', 5),
    ('Jak przygotować idealny stek?', 5),
    
    ('Jak upiec domowy chleb?', 6),
    ('Bułki pszenne vs razowe', NULL);

---

**Query #1**

    SELECT articles.title as "article name", categories.name as "category name"
    FROM articles 
    INNER JOIN categories
    ON articles.category_id = categories.id;

| article name                    | category name |
| ------------------------------- | ------------- |
| Marchewka – wartości odżywcze   | Warzywa       |
| Brokuły – dlaczego warto jeść   | Warzywa       |
| Najlepsze owoce na lato         | Owoce         |
| Kawa czy herbata – co wybrać?   | Napoje        |
| Najlepsze napoje na upały       | Napoje        |
| Mleko – fakty i mity            | Nabiał        |
| Czy czerwone mięso jest zdrowe? | Mięso         |
| Jak przygotować idealny stek?   | Mięso         |
| Jak upiec domowy chleb?         | Pieczywo      |

---
**Query #2**

    SELECT articles.title as "article name", categories.name as "category name"
    FROM articles
    LEFT JOIN categories
    On articles.category_id = categories.id;

| article name                    | category name |
| ------------------------------- | ------------- |
| Marchewka – wartości odżywcze   | Warzywa       |
| Brokuły – dlaczego warto jeść   | Warzywa       |
| Najlepsze owoce na lato         | Owoce         |
| Czy banany są zdrowe?           | NULL          |
| Kawa czy herbata – co wybrać?   | Napoje        |
| Najlepsze napoje na upały       | Napoje        |
| Mleko – fakty i mity            | Nabiał        |
| Jogurt naturalny – właściwości  | NULL          |
| Czy czerwone mięso jest zdrowe? | Mięso         |
| Jak przygotować idealny stek?   | Mięso         |
| Jak upiec domowy chleb?         | Pieczywo      |
| Bułki pszenne vs razowe         | NULL          |

---

[View on DB Fiddle](https://www.db-fiddle.com/f/eYD3kmuLgPLL39dVwpYyMh/1)