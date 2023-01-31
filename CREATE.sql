CREATE TABLE IF NOT EXISTS digest (
	digest_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	release_year INTEGER
);

CREATE TABLE IF NOT EXISTS album (
	album_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	release_year INTEGER
);

CREATE TABLE IF NOT EXISTS music_track (
	music_track_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	duration TIME,
	album_id INTEGER NOT NULL REFERENCES album(album_id)
);

CREATE TABLE IF NOT EXISTS singer (
	singer_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS genre (
	genre_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS musictrack_digest (
	music_track_id INTEGER REFERENCES music_track(music_track_id),
	digest_id INTEGER REFERENCES digest(digest_id),
	CONSTRAINT pk_1 PRIMARY KEY (digest_id, music_track_id)
);

CREATE TABLE IF NOT EXISTS genre_singer (
	genre_ID INTEGER REFERENCES genre(genre_ID),
	singer_ID INTEGER REFERENCES singer(singer_ID),
	CONSTRAINT pk_2 PRIMARY KEY (genre_ID, singer_ID)
);

CREATE TABLE IF NOT EXISTS album_singer (
	album_ID INTEGER REFERENCES album(album_ID),
	singer_ID INTEGER REFERENCES singer(singer_ID),
	CONSTRAINT pk_3 PRIMARY KEY (album_ID, singer_ID)
);