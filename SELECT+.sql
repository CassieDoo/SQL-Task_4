-- количество исполнителей в каждом жанре;
SELECT genre.name, COUNT(*) FROM genre 
JOIN genre_singer ON genre.genre_id = genre_singer.genre_id
GROUP BY genre.name;


-- количество треков, вошедших в альбомы 2019-2020 годов;
SELECT COUNT(*) FROM music_track
JOIN album ON music_track.album_id = album.album_id
WHERE album.release_year BETWEEN 2019 AND 2020;


-- средняя продолжительность треков по каждому альбому;
SELECT album.name, AVG(music_track.duration) FROM album
JOIN music_track ON album.album_id = music_track.album_id
GROUP BY album.name;


-- все исполнители, которые не выпустили альбомы в 2020 году;
SELECT singer.name FROM singer
JOIN album_singer ON singer.singer_id = album_singer.singer_id
JOIN album ON album_singer.album_id = album.album_id
WHERE album.release_year != 2020;


-- названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
SELECT digest.name FROM digest
JOIN musictrack_digest ON digest.digest_id = musictrack_digest.digest_id
JOIN music_track ON musictrack_digest.music_track_id = music_track.music_track_id
JOIN album ON music_track.album_id = album.album_id
JOIN album_singer ON album.album_id = album_singer.album_id
JOIN singer ON album_singer.singer_id = singer.singer_id
WHERE singer.name = 'Aisha';


-- название альбомов, в которых присутствуют исполнители более 1 жанра;
SELECT album.name FROM album
JOIN album_singer ON album.album_id = album_singer.album_id
JOIN singer ON album_singer.singer_id = singer.singer_id
JOIN genre_singer ON singer.singer_id = genre_singer.singer_id
JOIN genre ON genre_singer.genre_id = genre.genre_id
GROUP BY album.name
HAVING COUNT(*) > 1;


-- наименование треков, которые не входят в сборники;
SELECT music_track.name FROM music_track
LEFT JOIN musictrack_digest ON music_track.music_track_id = musictrack_digest.music_track_id
LEFT JOIN digest ON musictrack_digest.digest_id = digest.digest_id
WHERE digest.name IS NULL;


-- исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
SELECT singer.name FROM singer
JOIN album_singer ON singer.singer_id = album_singer.singer_id
JOIN album ON album_singer.album_id = album.album_id
JOIN music_track ON album.album_id = music_track.album_id
WHERE music_track.duration = (SELECT MIN (music_track.duration) FROM music_track);


-- название альбомов, содержащих наименьшее количество треков.
SELECT album.name FROM album
JOIN music_track ON album.album_id = music_track.album_id
GROUP BY album.name
HAVING COUNT(*) = (
	SELECT COUNT(*) FROM album
	JOIN music_track ON album.album_id = music_track.album_id
	GROUP BY album.name
	ORDER BY COUNT(*)
	LIMIT 1
);