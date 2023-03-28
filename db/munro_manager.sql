DROP TABLE IF EXISTS munros;
DROP TABLE IF EXISTS hikers;
DROP TABLE IF EXISTS todos;

CREATE TABLE munros (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    image VARCHAR(2045),
    height INT
);

INSERT INTO munros (name, height, image)
VALUES ('Ben Nevis', 1344, 'https://scontent-man2-1.xx.fbcdn.net/v/t39.30808-6/338315900_792571242300534_1774509365640302702_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=730e14&_nc_ohc=JHjI4isrW78AX_wMQFd&_nc_ht=scontent-man2-1.xx&oh=00_AfAnZjYK3a8CNkIM03paQszc5g-25weOpxHV9D0U8O6CMw&oe=64283F7A');

INSERT INTO munros (name, height, image)
VALUES ('Ben Vorlich', 985, 'https://scontent-man2-1.xx.fbcdn.net/v/t39.30808-6/337897107_601633191845243_6932210171895869208_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=730e14&_nc_ohc=yp-Nbp9Cn7AAX8jx2XS&_nc_ht=scontent-man2-1.xx&oh=00_AfDO31YLt9M3LozK4zcr6wYzjpddstjf6mmZAEKTqobqKw&oe=642859E9');

INSERT INTO munros (name, height, image)
VALUES ('Ben Chonzie', 931, 'https://scontent-man2-1.xx.fbcdn.net/v/t39.30808-6/338153518_914157319911383_5101928185380820735_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=730e14&_nc_ohc=vHSHXEiEHVMAX9mbRjC&_nc_ht=scontent-man2-1.xx&oh=00_AfCg7EM62h09BvsTcrDJNUAxmLuvLgThtbqtl0etoeokKw&oe=6427828A');

INSERT INTO munros (name, height, image)
VALUES ('Ben Lawers', 1214, 'https://scontent-man2-1.xx.fbcdn.net/v/t39.30808-6/338407425_165539103039548_3735703093717050757_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=730e14&_nc_ohc=t8FQNC3dRbsAX9jHSSj&_nc_ht=scontent-man2-1.xx&oh=00_AfDC8v0tUczTFtpEI5h2cBthwSCbkEL593uyuV-b--8s8A&oe=6428AF69');

INSERT INTO munros (name, height, image)
VALUES ('Ben Macdui', 1309, 'https://scontent-man2-1.xx.fbcdn.net/v/t39.30808-6/338237929_240882858299890_6554847818057873622_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=730e14&_nc_ohc=li-LojExch0AX-23s0_&_nc_ht=scontent-man2-1.xx&oh=00_AfAISe7sHF7JcpQ_zj6Hu1r6EM67_COpvNI8lld0L4neXw&oe=642815C8');

INSERT INTO munros (name, height, image)
VALUES ('Stuc a''Chroin', 975, 'https://scontent-man2-1.xx.fbcdn.net/v/t39.30808-6/337898503_3072510863044633_7535064901177893501_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=730e14&_nc_ohc=loKwtIBhaYwAX-PxDEG&_nc_ht=scontent-man2-1.xx&oh=00_AfCHCQ2Uz9Qll3TEJlHkrCP3uZjRccF90tFc6AoAwUGQBA&oe=642710CE');

INSERT INTO munros (name, height, image)
VALUES ('Beinn Eighe', 1010, 'https://scontent-man2-1.xx.fbcdn.net/v/t39.30808-6/337999326_603055055032601_8979628574566719955_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=730e14&_nc_ohc=tg-0g4mrM9sAX_oEQUA&_nc_ht=scontent-man2-1.xx&oh=00_AfCUsmr7x-ZqLsAeik92q2qgStu5VSD2NgX0yoLg_SQRiQ&oe=64287B4C');

INSERT INTO munros (name, height, image)
VALUES ('Ben Lomond', 974, 'https://scontent-man2-1.xx.fbcdn.net/v/t39.30808-6/338579968_942309380256011_5545038204168526477_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=730e14&_nc_ohc=zzi0B5_bxJoAX8Kbk6k&_nc_ht=scontent-man2-1.xx&oh=00_AfAUSm8lm8kdpp9h6tbQfeuD6AYJtxSUONjPU5U-GzIGuA&oe=64283EC1');

INSERT INTO munros (name, height, image)
VALUES ('Cairn Gorm', 1245, 'https://scontent-man2-1.xx.fbcdn.net/v/t39.30808-6/338168477_770795517606273_288739231213245806_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=730e14&_nc_ohc=lTTYuzygzMkAX_8wYKY&_nc_ht=scontent-man2-1.xx&oh=00_AfApGtlS5TDBFoKnpVGWFPgXWVYms5iHnJS7pTZ7LMPAyw&oe=6427B875');

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
    munro_id INT NOT NULL REFERENCES munros(id) ON DELETE CASCADE,
    completed BOOLEAN
);