CREATE TABLE functions(
    function_id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    function_name varchar(30)
);

CREATE TABLE subscriptions(
    subscription_id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    subscription_fee int,
    subscription_student_discount float,
    subscription_name varchar(30)
);

CREATE TABLE subscription_function(
  function_id INT,
subscription_id INT,
CONSTRAINT fk_function 
	FOREIGN KEY (function_id) 
		REFERENCES functions(function_id),
CONSTRAINT fk_subscription
	FOREIGN KEY (subscription_id) 
		REFERENCES subscriptions(subscription_id)
);

CREATE TABLE users (
user_id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
user_name varchar(30),
user_surname varchar(30),
user_nickname varchar(30),
user_email varchar(50),
user_phone int,
user_subscription int,
CONSTRAINT fk_subscription
      FOREIGN KEY(user_subscription)
        REFERENCES subscriptions(subscription_id)
);

CREATE TABLE artists
(
artist_id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
artist_name varchar(40),
artist_description text
);
CREATE TABLE albums
(
album_id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
album_name varchar(60),
album_release_date date,
album_artist int,
 CONSTRAINT fk_artist
      FOREIGN KEY(album_artist)
        REFERENCES artists(artist_id)
);
CREATE TABLE genres
(
genre_id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
genre_name varchar(30)
);
CREATE TABLE songs
(
song_id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY ,
song_name varchar(30),
song_genre int,
song_album int,
song_creator int,
song_duration_seconds int,
song_release_date date,
song_number_of_plays int,
constraint fk_genre
    FOREIGN KEY(song_genre)
        REFERENCES genres(genre_id),
constraint fk_album
    FOREIGN KEY(song_album)
        REFERENCES albums(album_id),
constraint fk_artist
    FOREIGN KEY(song_creator)
        REFERENCES artists(artist_id)
);


CREATE TABLE playlists
(
playlist_id int PRIMARY KEY generated always as IDENTITY ,
playlist_name varchar(30),
user_id INT,
CONSTRAINT fk_user 
	FOREIGN KEY (user_id) 
		REFERENCES users(user_id)
);


CREATE TABLE playlist_song
(
playlist_id INT,
song_id INT,
CONSTRAINT fk_playlist 
	FOREIGN KEY (playlist_id) 
		REFERENCES playlists(playlist_id),
CONSTRAINT fk_song 
	FOREIGN KEY (song_id) 
		REFERENCES songs(song_id) ON DELETE CASCADE
);

