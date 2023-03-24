DROP TABLE IF EXISTS munros;

CREATE TABLE munros (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    height INTEGER
);

INSERT INTO munros (name, height)
VALUES ('Ben Nevis', 1344);

INSERT INTO munros (name, height)
VALUES ('Ben Vorlich', 985);

INSERT INTO munros (name, height)
VALUES ('Ben Chonzie', 931)