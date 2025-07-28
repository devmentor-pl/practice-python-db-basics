DROP TABLE IF EXISTS logins;

CREATE TABLE logins (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    login_time TIMESTAMP NOT NULL
);

INSERT INTO logins (user_id, login_time) VALUES
(1, NOW() - INTERVAL '1 day'),
(2, NOW() - INTERVAL '2 days'),
(3, NOW() - INTERVAL '8 days'),
(2, NOW() - INTERVAL '5 days'),
(4, NOW() - INTERVAL '20 days'),
(5, '2025-03-01 08:15:00'),
(6, '2025-03-02 12:30:00'),
(2, '2025-03-05 14:00:00'),
(1, '2025-03-08 17:45:00'),
(5, '2025-03-10 09:10:00'),
(6, NOW() - INTERVAL '1 hour'),
(3, '2025-02-15 10:00:00'),
(1, '2025-03-15 11:20:00'),
(5, '2025-03-20 13:00:00'),
(3, '2025-04-01 08:00:00'),
(4, '2025-04-10 09:00:00'),
(2, NOW() - INTERVAL '4 days'),
(5, NOW() - INTERVAL '6 days'),
(1, '2025-03-04 07:50:00'),
(3, '2025-03-09 20:20:00');


SELECT * FROM logins
WHERE login_time >= CURRENT_DATE - INTERVAL '7 days'

SELECT * FROM logins
WHERE login_time >= '2025-03-01' AND login_time < '2025-03-11';

SELECT * FROM logins
WHERE user_id = 2;