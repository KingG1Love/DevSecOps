\connect news;





CREATE TABLE IF NOT EXISTS posts (
    id SERIAL PRIMARY KEY,
    responsible_id INTEGER NOT NULL,
    responsible_name TEXT NOT NULL,
    context TEXT NOT NULL,
    assigned_at BIGINT NOT NULL,
    due_date BIGINT NOT NULL
);


INSERT INTO posts (responsible_id, responsible_name, context, assigned_at, due_date)
VALUES (1337, 'Nakonecto', 'Razrabotka))', 228, 322);

-- Обновляем последовательность, чтобы SERIAL не конфликтовал с существующими id
SELECT setval(pg_get_serial_sequence('posts', 'id'), coalesce(max(id),0) + 1, false) FROM posts;

