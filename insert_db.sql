INSERT INTO functions (function_name) VALUES
    ('Offline Download'),
    ('Unlimited Skips'),
    ('High-Quality Streaming'),
    ('Family Sharing');

INSERT INTO subscriptions (subscription_fee, subscription_student_discount ,subscription_name) VALUES
    (0, NULL,'Free'),
    (9, 2,'Premium'),
    (15, 5,'Family');

INSERT INTO subscription_function (function_id, subscription_id) VALUES
    (1, 2), 
    (2, 2), 
    (3, 2),
    (1, 3),
    (2, 3),
    (3, 3),
    (4, 3);

INSERT INTO users (user_name, user_surname, user_nickname, user_email, user_phone) VALUES
('Jan', 'Kowalski', 'JKowalski', 'jankowalski@gmail.com', 987654321),
('Andrzej', 'Maciejewski', 'maciejew', 'maciejewski@wp.pl', 777888999),
('Natasza', 'Górecka', 'NatiG', 'nataszagorecka@gmail.com', 345357369),
('Natalia', 'Pietrzak', 'npietrzak99', 'pietrzaknatalia@gmail.com', 185671523),
('Franciszek', 'Zalewski', 'zalevski', 'zalevski@gmail.com', 885231355),
('Ewelina', 'Makowska', 'ewelina77', 'ewelinamakowska77@gmail.com', 896346316),
('Janina', 'Kowalska', 'janinak', 'kowalskajanina@gmail.com', 675641321),
('Adam', 'Błaszczyk', 'AdBlasz', 'adasblaszcz@proton.com', 555235161),
('Bogumił', 'Kozłowski', 'kozlos', 'bkozlowski@gmail.com', 876273645),
('Gniewomir', 'Szymczak', 'szymczgniew', 'szymczakg@gmail.com', 786512347),
('Adam', 'Rokoko', 'adas902', 'adas902@gmail.com', 401980293),
('Zbigniew', 'Maciejewski', 'zbychu311', 'zbychu311@gmail.com', 101930493);

INSERT INTO artists (artist_name, artist_description) VALUES
('David Guetta', 'French electronic music producer'),
('Travis Scott', 'A Houston-born hip-hop artist and producer'),
('HI-LO', 'Oliver Heldens HI-LO alias is reserved for his deepest and darkest records'),
('Will Clarke', 'An instantly recognizable DJ with his unique style and a one-of-a-kind beard'),
('Space 92', 'The mind behind 2020s best-selling Beatport Techno track of the year, Space 92 is a chart-topping French producer played by the greatest'),
('Deborah de Luca', 'Born under the shade of the infamous Vele di Scampia - the now-globally recognized DJ, producer, and label head came from humble beginnings, forging her path to international success against unlikely odds'),
('ACRAZE', 'Acraze is showing to be true visionary as he conquered the bold transition from his speaker-rattling bass sound to a more sophistiated house approach'),
('Tiesto', 'GRAMMY Award-winning, platinum-certified, international icon'),
('Riton', 'Ritons club hits are defining a generation - and making them party hard'),
('Eli & Fur', 'Eli & Furs unwavering passion for producing, songwriting and performing, plus a flair for creating dark emotive dance anthems, have put the London based duo firmly at the forefront of the international house & techno scene'),
('Nora En Pure', 'Globally renowned and adored for her cinematic soundscapes and ethereal performances, South African-born, Swiss-based Queen of Deep House'),
('Qrion', 'Qrions name has graced labels such as Anjunadeep, Sashas label Last Night On Earth, Mad Decent and more.'),
('Dmitri Vegas & Like Mike', 'Electronic music lovers and fans all over the world know Dimitri & Mike Thivaios as the monolithic brotherly duo "Dmitri Vegas & Like Mike" and as ambassadors of the worldwide phenomenon, Tomorrowland'),
('Roddy Ricch', 'Rising from the streets of Compton but with a distinct Southern flair, rapper Roddy Ricch lays his introspective rhymes atop melodic trap, resulting in a hybrid form that has captured the ears od both regions');

INSERT INTO albums (album_name,  album_artist, album_release_date) VALUES
('Rock With Me', 4, '2021-10-09'),
('Hypnos', 3, '2021-01-15'),
('The Game', 5, '2020-05-18'),
('Maybe Im Wrong', 6, '2020-09-11'),
('Do It To It', 7, '2021-07-15'),
('The Motto', 8, '2021-06-18'),
('Friday Dopamine Re-Edit', 9, '2021-04-12'),
('Otherside', 10, '2021-12-05'),
('Thermal/Oblivion', 11, '2021-11-21'),
('LNOE Introducing Vol. 1', 12, '2021-07-03'),
('Well Be Dancing Soon', 13, '2021-10-12'),
('Alive Again', 1, '2021-11-18'),
('Impossible', 1, '2021-07-03'),
('LIVE LIFE FAST', 14, '2021-12-06'),
('ESCAPE PLAN/MAFIA', 2, '2021-12-15');

INSERT INTO genres(genre_name) VALUES
('Hip-Hop'),
('Techno'),
('House'),
('Tech-House'),
('Deep-House'),
('Pop'),
('Future Rave');

INSERT INTO songs(song_name, song_genre, song_album, song_creator, song_duration_seconds, song_release_date, song_number_of_plays) VALUES
('Rock With Me', 2, 1, 4, 196, '2021-10-09', 480464),
('Hypnos', 2, 2, 3, 250, '2021-01-15', 1152654),
('The Game', 2, 3, 5, 364,'2020-05-18', 2941867),
('Maybe Im Wrong', 2, 4, 6, 331, '2020-09-11', 480464),
('Do It To It', 4, 5, 7, 157, '2021-07-15', 158411917),
('The Motto', 5, 6, 8, 164, '2021-06-18', 60294765),
('Friday Dopamine Re-Edit', 3, 7, 9, 169, '2021-04-12', 566614311),
('Otherside', 3, 8, 10, 196, '2021-12-05', 3562154),
('Oblivion', 5, 9, 11, 216, '2021-11-21', 3102515),
('Monolith', 3, 10, 12, 285, '2021-07-03', 996514),
('Well Be Dancing Soon', 6, 11, 13, 158, '2021-10-12', 14682955),
('Alive Again', 4, 12, 1, 212, '2021-11-18', 2211624),
('Impossible', 7, 13, 1, 188, '2021-07-03', 21559716),
('25 million', 1, 14, 14, 204, '2021-12-06', 8605092),
('late at night', 1, 14, 14, 196, '2021-10-09', 480464),
('MAFIA', 1, 15, 2, 240, '2021-12-15', 38689752),
('ESCAPE PLAN', 1, 15, 2, 149, '2021-12-15', 58992645);

INSERT INTO playlists(playlist_name, user_id) VALUES
('Techno Party', 9),
('Dance Hits', 3),
('Night Rider', 6),
('Happy Beats', 1),
('RapCaviar', 8);

INSERT INTO playlist_song
(playlist_id, song_id)
VALUES
(1, 1),
(1, 2),
(1, 3),
(3, 3),
(1, 4),
(3, 4),
(2, 5),
(2, 6),
(2, 7),
(4, 8),
(4, 9),
(4, 10),
(2, 11),
(4, 11),
(3, 12),
(3, 13),
(5, 14),
(5, 15),
(5, 16),
(5, 13),
(3, 10);