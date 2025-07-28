CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    content TEXT,
    created_at TIMESTAMP
);

INSERT INTO posts (title, content, created_at) VALUES
('Nowinki technologiczne', 'Dziś omówimy najnowsze trendy w AI.', NOW() - INTERVAL '1 week'),
('Podróż do Japonii', 'Relacja z podróży po Kioto i Tokio.', NOW() - INTERVAL '1 month'),
('Recenzja książki', 'Nowa książka Tokarczuk robi wrażenie.', NOW() - INTERVAL '1 year'),
('Jak zacząć z SQL', 'Wprowadzenie do podstaw języka SQL.', NOW() - INTERVAL '2 days'),
('Minimalizm w praktyce', 'Czy mniej znaczy lepiej? Praktyczne wskazówki.', NOW() - INTERVAL '3 months'),
('Poranek idealny', 'Jak wygląda moja poranna rutyna.', NOW() - INTERVAL '3 days'),
('Najlepsze kawiarnie w Krakowie', 'Top 5 miejsc na kawę i ciastko.', NOW() - INTERVAL '7 years'),
('Wprowadzenie do Pythona', 'Pierwsze kroki z programowaniem w Pythonie.', NOW() - INTERVAL '1 week'),
('Dlaczego warto medytować?', 'Korzyści z codziennej medytacji.', NOW() - INTERVAL '3 weeks'),
('Poradnik freelancera', 'Jak zacząć pracować na własny rachunek.', NOW() - INTERVAL '7 months'),
('Przegląd aplikacji do notatek', 'Evernote, Notion czy OneNote?', NOW() - INTERVAL '1 day'),
('Jak efektywnie planować tydzień', 'Planer czy aplikacja? Oto mój sposób.', NOW() - INTERVAL '1 month'),
('Spacer po lesie', 'Kilka zdjęć i przemyśleń z dzisiejszego spaceru.', NOW() - INTERVAL '2 days'),
('Najlepsze seriale 2025', 'Co warto obejrzeć na Netflixie i HBO?', NOW() - INTERVAL '8 years'),
('Jak się nie wypalić zawodowo?', 'Techniki na odzyskanie równowagi.', NOW() - INTERVAL '10 days');

SELECT title, content, created_at FROM posts
ORDER BY created_at DESC
LIMIT 5;

SELECT title, content, created_at FROM posts
ORDER BY created_at DESC
LIMIT 5 OFFSET 5;


