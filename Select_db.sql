
-- select all users whose name start with "A"
SELECT * FROM users WHERE user_name like 'A%';

-- albums and song which belongs to them
SELECT album_name, song_name
FROM songs INNER JOIN albums a
on a.album_id = songs.song_album
GROUP BY album_name, song_name
;

-- version without a inner join
SELECT album_name, song_name
FROM songs, albums a
WHERE a.album_id = songs.song_album
GROUP BY album_name, song_name;

-- number of songs in albums
SELECT album_name,
       (SELECT COUNT(song_album)
        FROM songs s
        WHERE a.album_id = s.song_album)
as number_of_songs
FROM albums a
ORDER BY number_of_songs;


-- Select all songs which are not in any playlist
SELECT * FROM songs WHERE song_id NOT IN (SELECT song_id FROM playlist_song);

-- With except
SELECT song_id FROM songs EXCEPT SELECT song_id FROM playlist_song;


-- Calculate a fee with student discount
SELECT subscription_name, (subscription_fee - subscription_student_discount)
as student_fee
FROM subscriptions
WHERE subscription_student_discount is not null;

-- Delete songs longer than 100 seconds
DELETE FROM songs where song_duration_seconds>100;

-- Add long to a tile when a song duration is longer than 150 seconds
UPDATE songs SET song_name = song_name||'_long' WHERE song_duration_seconds>100;

-- View of students prices of a subscription
CREATE VIEW subscription_student as SELECT *, subscription_fee-subscription_student_discount as student_subscription FROM subscriptions;