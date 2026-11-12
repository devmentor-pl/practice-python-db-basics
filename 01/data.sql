CREATE TABLE posts(
	id SERIAL PRIMARY KEY,
	title TEXT NOT NULL,
	content TEXT,
	created_at TIMESTAMP
);

INSERT INTO posts (title, content, created_at) VALUES
	('Utworzenie', 'Data utworzenia procedury', '2026-01-01T10:00:00'),
	('Audyt', 'Data realizacji procedury', TIMESTAMP '2026-01-01T10:00:00' + INTERVAL '3 months'),
	('Audyt', 'Data realizacji procedury', TIMESTAMP '2026-01-01T10:00:00' + INTERVAL '6 months'),
	('Audyt', 'Data realizacji procedury', TIMESTAMP '2026-01-01T10:00:00' + INTERVAL '9 months'),
	('Weryfikacja', 'Data weryfikacji realizacji procedury', NOW()::TIMESTAMP(0));