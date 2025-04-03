-- VSCODE의 sqlite 확장 설치
-- Use DB => Run Query

CREATE TABLE test (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    age INTEGER
);

ALTER TABLE test RENAME TO user;

ALTER TABLE user ADD COLUMN email TEXT;

ALTER TABLE user RENAME COLUMN name TO username;

DROP TABLE user;