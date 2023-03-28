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

INSERT INTO munros (name, height)
VALUES ('Ben Lawers', 1214);

INSERT INTO munros (name, height)
VALUES ('Ben Macdui', 1309);

INSERT INTO munros (name, height)
VALUES ('Stuc a''Chroin', 975);

INSERT INTO munros (name, height)
VALUES ('Beinn Eighe', 1010);

INSERT INTO munros (name, height)
VALUES ('Ben Lomond', 974);

INSERT INTO munros (name, height)
VALUES ('Cairn Gorm', 1245);

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