CREATE OR REPLACE FUNCTION add_tax()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE subscriptions
    SET subscription_fee = subscription_fee + 3
    WHERE subscription_id=NEW.subscription_id;
    RETURN NEW;
END;
$$ LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION add_intro()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE songs
    SET song_duration_seconds = song_duration_seconds + 30
    WHERE song_duration_seconds=NEW.song_duration_seconds;
    RETURN NEW;
END;
$$ LANGUAGE 'plpgsql';







