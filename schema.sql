CREATE TABLE IF NOT EXISTS site_settings (
    key TEXT PRIMARY KEY,
    value TEXT NOT NULL
);

INSERT OR IGNORE INTO site_settings (key, value)
VALUES
    ('title', 'COCONUT'),
    ('description', 'Launch games in cloak mode'),
    ('lessonsPath', '/pages/lessons/lessons.html');

CREATE TABLE IF NOT EXISTS games (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    path TEXT NOT NULL,
    enabled INTEGER NOT NULL DEFAULT 1
        CHECK (enabled IN (0, 1))
);

INSERT INTO games (name, path)
VALUES
    ('Lessons', '/games/lessons.html');
