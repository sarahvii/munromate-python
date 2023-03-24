DROP TABLE IF EXISTS munros;

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

DROP TABLE IF EXISTS hikers;

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