INSERT INTO genre(name)
VALUES('Blues'),
	('Soul'),
	('Hard Rock'),
	('Country'),
	('Hip-Hop');

INSERT INTO singer (name)
VALUES('Margaret Eagle'),
	('Ronald Gilmour'),
	('Harriet Davies'),
	('Roger Jenkin'),
	('Leroy'),
	('Lucas Clark'),
	('Abdul Townend'),
	('Aisha');

INSERT INTO album (name, release_year)
VALUES('Star Wars', 2018),
	('Inside Out', 1994),
	('The Notebook', 2019),
	('Romeo and Juliet', 1997),
	('SING', 2000),
	('Shutter Island', 2021),
	('Octav', 2018),
	('Infinity War', 2020);

INSERT INTO music_track (name, duration, album_id)
VALUES('Мой дом', '00:04:20', 1),
	('Rock this party', '00:03:12', 2),
	('How Do I Live', '00:01:50', 3),
	('Billionaire', '00:01:50', 4),
	('My way', '00:08:23', 5),
	('Cheri cheri lady', '00:04:21', 6),
	('Hey Jude', '00:02:44', 7),
	('Livin la vida loca', '00:05:39', 8),
	('Familiar', '00:03:21', 2),
	('Call Me Maybe', '00:05:35', 4),
	('Strongest', '00:06:54', 6),
	('Macarena', '00:04:23', 8),
	('Let me entertain you', '00:03:06', 1),
	('Its my life', '00:03:46', 3),
	('Andalouse', '00:03:02', 4);
	
INSERT INTO digest (name, release_year)
VALUES('Rambo', 1999),
	('Friends With Kids', 2013),
	('Chocolat', 2018),
	('Snatch', 1996),
	('Pretty Woman', 2015),
	('The Martian', 2021),
	('Ice Age', 2020),
	('The Wolf', 2019);

INSERT INTO genre_singer
VALUES(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(1, 6),
	(2, 7),
	(3, 8),
	(2, 1),
	(4, 2);
	
INSERT INTO album_singer
VALUES(8, 1),
	(7, 2),
	(6, 3),
	(5, 4),
	(4, 5),
	(3, 6),
	(2, 7),
	(1, 8),
	(5, 7),
	(3, 3);
	
INSERT INTO musictrack_digest
VALUES(1, 2),
	(2, 4),
	(3, 6),
	(4, 8),
	(5, 1),
	(6, 3),
	(7, 5),
	(8, 7),
	(9, 8),
	(10, 6),
	(11, 4),
	(12, 2),
	(13, 7),
	(14, 5);