CREATE TABLE categories (
	id SERIAL PRIMARY KEY,	
	name TEXT NOT NULL
);

CREATE TABLE articles (
  	id SERIAL PRIMARY KEY,
  	title TEXT NOT NULL,
  	category_id INT REFERENCES categories(id)
);

INSERT INTO categories (name) VALUES
	('Sport'), ('Gospodarka'), ('Polityka');

INSERT INTO articles (title, category_id) VALUES
	('Lewandowski dominuje w USA', '1'),
    ('Świątek wygrywa w Chinach', '1'),
    ('Szef Nvidia rezygnuje ze stanowiska', '2'),
    ('Nagroda Nobla z fizyki przyznana', NULL);