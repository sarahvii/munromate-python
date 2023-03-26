DROP TABLE IF EXISTS munros;
DROP TABLE IF EXISTS hikers;
DROP TABLE IF EXISTS todos;

CREATE TABLE munros (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    height INT
);

INSERT INTO munros (name, height)
VALUES ('Ben Nevis', 1344);

INSERT INTO munros (name, height)
VALUES ('Ben Vorlich', 985);

INSERT INTO munros (name, height)
VALUES ('Ben Chonzie', 931);

CREATE TABLE hikers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    age INT
);

INSERT INTO hikers (name, age)
VALUES ('George', 27);

INSERT INTO hikers (name, age)
VALUES ('Bob', 52);

INSERT INTO hikers (name, age)
VALUES ('Jane', 42);

CREATE TABLE todos (
    id SERIAL PRIMARY KEY,
    hiker_id INT REFERENCES hikers(id) ON DELETE CASCADE,
    munro_id INT NOT NULL REFERENCES munros(id) ON DELETE CASCADE
);