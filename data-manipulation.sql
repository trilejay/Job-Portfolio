
-- CREATING NEW ENTRIES
---------------------------------------------------------
-- Query for when adding a new artist
-- % prefix indicates variables that will be user input
INSERT INTO artists(name, email, birthdate, genres_genre_id)
VALUES (%name, %email, %birthdate, %genres_genre_id);

-- Query for when adding a new track
-- % prefix indicates variables that will be user input
INSERT INTO tracks(title, release_date, duraton, genres_genre_id)
VALUES (%title, %release_date, %duration, %genres_genre_id);

-- Query for when adding a new genre
-- % prefix indicates variables that will be user input
INSERT INTO genres(name)
VALUES (%name);

-- Query for when adding a new album
-- % prefix indicates variables that will be user input
INSERT INTO albums(title, release_date, genres_genre_id)
VALUES (%title, %release_date, %genres_genre_id);


-- READING
---------------------------------------------------------
-- Query for when viewing artists
SELECT * FROM artists;

-- Query for when viewing tracks
SELECT * FROM tracks;

-- Query for when viewing genres
SELECT * FROM genres;

-- Query for when viewing albums
SELECT * FROM albums;

-- Query for when viewing artists_tracks
SELECT tracks.track_id, tracks.title, artists.artist_id, artists.name AS artist_name
FROM tracks
JOIN artists_tracks ON tracks.track_id = artists_tracks.tracks_track_id
JOIN artists ON artists_tracks.artists_artist_id = artists.artist_id;

-- Query for when viewing artists_albums
SELECT albums.album_id, albums.title AS album_title, artists.artist_id, artists.name AS artist_name
FROM albums
JOIN artists_albums ON albums.album_id = artists_albums.albums_album_id
JOIN artists ON artists_albums.artists_artist_id = artists.artist_id;


-- UPDATING
---------------------------------------------------------
-- Query for when updating artists
-- % prefix indicates variables that will be pulled from backend
-- $ prefix indicates variables that will be user input
SELECT * FROM artists WHERE artist_id = %;
SELECT genre_id FROM genres;

UPDATE artists
SET name = $, email = $, birthdate = $, genres_genre_id = $
WHERE artist_id = %;

-- Query for when updating tracks
-- % prefix indicates variables that will be pulled from backend
-- $ prefix indicates variables that will be user input
SELECT * FROM tracks WHERE track_id = %;
SELECT genre_id, name FROM genres;
SELECT artist_id, name FROM artists;
SELECT album_id, title FROM albums;

UPDATE tracks
SET title = $, release_date = $, duration = $, genres_genre_id_id = $
WHERE track_id = %;

-- Query for when updating genres
-- % prefix indicates variables that will be pulled from backend
-- $ prefix indicates variables that will be user input
SELECT * FROM genres WHERE genre_id = %;

UPDATE genres
SET name = $,
WHERE genre_id = %;

-- Query for when updating albums
-- % prefix indicates variables that will be pulled from backend
-- $ prefix indicates variables that will be user input
SELECT * FROM albums WHERE album_id = %;
SELECT genre_id, name FROM genres;

UPDATE albums
SET title = $, release_date = $, genres_genre_id
WHERE album_id = %;


-- DELETING
---------------------------------------------------------
-- Query for when deleting artists
-- % prefix indicates variables that will be pulled from backend
DELETE FROM artists WHERE artist_id = %;

-- Query for when deleting tracks
-- % prefix indicates variables that will be pulled from backend
DELETE FROM tracks WHERE track_id = %;

-- Query for when deleting genres
-- % prefix indicates variables that will be pulled from backend
DELETE FROM genres WHERE genre_id = %;

-- Query for when deleting albums
-- % prefix indicates variables that will be pulled from backend
DELETE FROM albums WHERE album_id = %;

