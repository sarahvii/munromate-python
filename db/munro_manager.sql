DROP TABLE IF EXISTS munros;
DROP TABLE IF EXISTS hikers;
DROP TABLE IF EXISTS todos;

CREATE TABLE munros (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    image VARCHAR(2045),
    description VARCHAR(2045),
    height INT
);

INSERT INTO munros (name, height, image, description)
VALUES ('Ben Nevis', 1344, 'https://scontent-man2-1.xx.fbcdn.net/v/t39.30808-6/338315900_792571242300534_1774509365640302702_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=730e14&_nc_ohc=JHjI4isrW78AX_wMQFd&_nc_ht=scontent-man2-1.xx&oh=00_AfAnZjYK3a8CNkIM03paQszc5g-25weOpxHV9D0U8O6CMw&oe=64283F7A', 'The highest mountain in the UK, located in the western part of the Scottish Highlands. It is a challenging climb that requires experience and preparation, but the stunning views of the surrounding mountains and valleys from the summit make it well worth the effort. It is a popular destination for hikers and climbers from all over the world.');

INSERT INTO munros (name, height, image, description)
VALUES ('Ben Vorlich', 985, 'https://scontent-man2-1.xx.fbcdn.net/v/t39.30808-6/337897107_601633191845243_6932210171895869208_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=730e14&_nc_ohc=yp-Nbp9Cn7AAX8jx2XS&_nc_ht=scontent-man2-1.xx&oh=00_AfDO31YLt9M3LozK4zcr6wYzjpddstjf6mmZAEKTqobqKw&oe=642859E9', 'A popular mountain located in the southern Highlands of Scotland that offers spectacular views of Loch Earn and the surrounding hills. It is a relatively easy Munro to climb and is a great introduction to hillwalking.');

INSERT INTO munros (name, height, image, description)
VALUES ('Ben Chonzie', 931, 'https://scontent-man2-1.xx.fbcdn.net/v/t39.30808-6/338153518_914157319911383_5101928185380820735_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=730e14&_nc_ohc=vHSHXEiEHVMAX9mbRjC&_nc_ht=scontent-man2-1.xx&oh=00_AfCg7EM62h09BvsTcrDJNUAxmLuvLgThtbqtl0etoeokKw&oe=6427828A', 'A gentle Munro situated in the Perthshire hills that offers panoramic views of the surrounding area. It is a great mountain for beginners or for those looking for a more relaxed hike.');

INSERT INTO munros (name, height, image, description)
VALUES ('Ben Lawers', 1214, 'https://scontent-man2-1.xx.fbcdn.net/v/t39.30808-6/338407425_165539103039548_3735703093717050757_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=730e14&_nc_ohc=t8FQNC3dRbsAX9jHSSj&_nc_ht=scontent-man2-1.xx&oh=00_AfDC8v0tUczTFtpEI5h2cBthwSCbkEL593uyuV-b--8s8A&oe=6428AF69', 'The highest peak in the southern part of the Scottish Highlands, located in the central Highlands of Scotland. It offers stunning views of the surrounding area, including Loch Tay and the Tarmachan Ridge.');

INSERT INTO munros (name, height, image, description)
VALUES ('Ben Macdui', 1309, 'https://scontent-man2-1.xx.fbcdn.net/v/t39.30808-6/338237929_240882858299890_6554847818057873622_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=730e14&_nc_ohc=li-LojExch0AX-23s0_&_nc_ht=scontent-man2-1.xx&oh=00_AfAISe7sHF7JcpQ_zj6Hu1r6EM67_COpvNI8lld0L4neXw&oe=642815C8', 'The second highest mountain in the UK, located in the Cairngorms National Park in Scotland. It is a challenging climb but offers incredible views of the surrounding area, including the Lairig Ghru pass and the Braeriach plateau.');

INSERT INTO munros (name, height, image, description)
VALUES ('Stuc a''Chroin', 975, 'https://scontent-man2-1.xx.fbcdn.net/v/t39.30808-6/337898503_3072510863044633_7535064901177893501_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=730e14&_nc_ohc=loKwtIBhaYwAX-PxDEG&_nc_ht=scontent-man2-1.xx&oh=00_AfCHCQ2Uz9Qll3TEJlHkrCP3uZjRccF90tFc6AoAwUGQBA&oe=642710CE', 'A popular Munro situated in the southern Highlands of Scotland that offers stunning views of the surrounding hills and glens. It is a challenging climb, but well worth the effort for the spectacular views.');

INSERT INTO munros (name, height, image, description)
VALUES ('Beinn Eighe', 1010, 'https://scontent-man2-1.xx.fbcdn.net/v/t39.30808-6/337999326_603055055032601_8979628574566719955_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=730e14&_nc_ohc=tg-0g4mrM9sAX_oEQUA&_nc_ht=scontent-man2-1.xx&oh=00_AfCUsmr7x-ZqLsAeik92q2qgStu5VSD2NgX0yoLg_SQRiQ&oe=64287B4C', 'A spectacular Munro located in the north-west Highlands of Scotland that offers breathtaking views of the Torridon mountain range and surrounding wilderness. It is a challenging climb, but the views from the top are truly awe-inspiring.');

INSERT INTO munros (name, height, image, description)
VALUES ('Ben Lomond', 974, 'https://scontent-man2-1.xx.fbcdn.net/v/t39.30808-6/338579968_942309380256011_5545038204168526477_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=730e14&_nc_ohc=zzi0B5_bxJoAX8Kbk6k&_nc_ht=scontent-man2-1.xx&oh=00_AfAUSm8lm8kdpp9h6tbQfeuD6AYJtxSUONjPU5U-GzIGuA&oe=64283EC1', 'One of the most popular Munros located in the southern Highlands of Scotland that offers incredible views of Loch Lomond and the surrounding hills. It is a challenging climb, but well worth the effort for the stunning views from the summit.');

INSERT INTO munros (name, height, image, description)
VALUES ('Cairn Gorm', 1245, 'https://scontent-man2-1.xx.fbcdn.net/v/t39.30808-6/338168477_770795517606273_288739231213245806_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=730e14&_nc_ohc=lTTYuzygzMkAX_8wYKY&_nc_ht=scontent-man2-1.xx&oh=00_AfApGtlS5TDBFoKnpVGWFPgXWVYms5iHnJS7pTZ7LMPAyw&oe=6427B875', 'A popular Munro situated in the Cairngorms National Park in Scotland that offers stunning views of the surrounding area, including the Northern Corries and Loch Morlich. It is a great mountain for experienced hikers looking for a challenge.');

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