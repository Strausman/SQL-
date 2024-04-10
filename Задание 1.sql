--#Задание 1

INSERT INTO Artists(artist_name)
VALUES('Weekend'), ('Maroon 5'), ('Rammstein'), ('Limp Bizkit');

INSERT INTO Genres(genre_name)
VALUES('Pop'), ('Metal'), ('Rap'), ('House');

INSERT INTO Albums(album_name, release_year)
VALUES('Life', 2007), ('Death', 2016), ('Love', 1995), ('Danger', 2019);

INSERT INTO Tracks(track_name, duration_in_sec, album_id)
VALUES('Johny', 240, 3), ('Children', 300, 1), ('Hell', 267, 2), ('Life', 329, 4), ('Tears', 278, 3), ('Disco', 310, 2);

INSERT INTO Collections(collection_name, release_year)
VALUES('Happiness', 2021), ('Sadness', 2023), ('Party', 2022), ('Sport', 2020);

INSERT INTO Collections_Tracks(collection_id, track_id)
VALUES(1,3), (2,5), (3,2), (4,6);

INSERT INTO Albums_Artists(album_id, artist_id)
VALUES(2,4), (1,1), (3,2), (4,3);

INSERT INTO Artists_Genres(genre_id, artist_id)
VALUES(4,3), (2,2), (1,4), (3,1);
