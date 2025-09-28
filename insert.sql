-- Insert artist data information into artists table
INSERT INTO artists (name, email, birthdate)
VALUES 
("Snoop Dog", "sdogg@gmail.com", "1971-10-20"),
("Taylor Swift", "tswift@gmail.com", "1989-12-13"),
("The Weeknd", "weeknd@gmail.com", "1990-02-16"),
("Michael Jackson", "mjackson@gmail.com", "1958-08-29");

-- Insert albums information into albums table
INSERT INTO albums (title, release_date)
VALUES 
("After Hours", "2020-03-20"),
("Fearless", "2008-11-11"),
("R & G: The Masterpeice", "2004-11-16"),
("Thriller", "1982-11-29");

-- Insert genres information into genres table
INSERT INTO genres (name)
VALUES 
("Country Pop"), 
("R & B"), 
("Funk"), 
("Synthwave");

-- Insert tracks information into tracks table
INSERT INTO tracks (title, release_date, duration, genres_genre_id)
VALUES
("Blinding Lights", "2020-03-20", "4:22", 10),
("Drop It Like It's Hot", "2004-11-16", "4:24", 12),
("Love Story", "2008-11-11", "3:56", 9),
("Thriller", "1982-11-29", "3:22", 11),
("Beat It", "1982-11-29", "4:18", 11);

-- Insert artist_id and genre_id information into artists_genres table
-- INSERT INTO artists_genres (artists_artist_id, genres_genre_id)
-- VALUES 
-- (1, 2),
-- (2, 1),
-- (3, 4),
-- (4, 3);

-- Insert artist_id and track_id information into artists_tracks table
INSERT INTO artists_tracks (artists_artist_id, tracks_track_id)
VALUES 
(3, 2),
(2, 3),
(4, 4),
(1, 2),
(4, 5);

-- Insert artist_id and album_id information into artists_albums table
INSERT INTO artists_albums (artists_artist_id, albums_album_id)
VALUES 
(4, 4),
(3, 1),
(2, 2),
(1, 3);

-- Insert track_id and genre_id information into tracks_genres table
-- INSERT INTO tracks_genres (tracks_track_id, genres_genre_id)
-- VALUES 
-- (4, 4),
-- (3, 1),
-- (2, 2),
-- (1, 3),
-- (5, 3);

-- Insert album_id and genre_id information into albums_genres table
-- INSERT INTO albums_genres (albums_album_id, genres_genre_id)
-- VALUES 
-- (1, 4),
-- (2, 1),
-- (3, 2),
-- (4, 3);



