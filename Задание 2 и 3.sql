--№Задание 2

SELECT track_name, duration_in_sec
FROM tracks 
ORDER BY duration_in_sec DESC 
LIMIT 1;

SELECT track_name
FROM tracks
WHERE duration_in_sec > 210;

SELECT collection_name, release_year  
FROM collections
WHERE release_year BETWEEN 2018 AND 2020;

SELECT artist_name
FROM artists 
WHERE artist_name NOT LIKE '% %';

UPDATE tracks 
SET track_name = 'My tears'
WHERE id = 5;

SELECT track_name
FROM tracks 
WHERE track_name LIKE '%My%' OR track_name LIKE '%мой%';


--Задание №3

SELECT g.genre_name, COUNT(ag.artist_id) AS number_of_artists
FROM genres AS g
LEFT JOIN artists_genres AS ag ON g.ID = ag.genre_id
GROUP BY g.genre_name;


SELECT a.album_name, COUNT(t.ID) AS number_of_tracks
FROM albums AS a
INNER JOIN tracks t ON a.ID = t.album_id
WHERE a.release_year BETWEEN 2019 AND 2020
GROUP BY a.album_name;


SELECT a.album_name, AVG(t.duration_in_sec) AS average_duration
FROM albums a
INNER JOIN tracks t ON a.ID = t.album_id
GROUP BY a.album_name;


SELECT ar.ID, ar.artist_name
FROM artists ar
WHERE ar.ID NOT IN (
    SELECT DISTINCT aa.artist_id
    FROM albums_artists aa
    JOIN albums al ON aa.album_id = al.ID
    WHERE al.release_year = 2020
);

SELECT DISTINCT col.collection_name
FROM Collections col
JOIN Collections_Tracks col_tr ON col.id = col_tr.collection_id
JOIN Tracks tr ON col_tr.track_id = tr.id
JOIN Albums al ON tr.album_id = al.id
JOIN Albums_Artists al_ar ON al.id = al_ar.album_id
JOIN Artists ar ON al_ar.artist_id = ar.id
WHERE ar.artist_name = 'Weekend';