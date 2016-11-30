DROP TABLE albums;
DROP TABLE artists;

CREATE TABLE artists (
  id SERIAL8 primary key,
  name VARCHAR(255),
  artist_url TEXT
  );

CREATE TABLE albums (
  id SERIAL8 primary key,
  title VARCHAR(255),
  genre VARCHAR(255),
  quantity INT4,
  artist_id INT8 references artists(id) ON DELETE CASCADE,
  album_url TEXT,
  price INT4
);

