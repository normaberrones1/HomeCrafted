BEGIN TRANSACTION;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS rooms;
DROP TABLE IF EXISTS todo_lists;
DROP TABLE IF EXISTS home_styles;
DROP TABLE IF EXISTS color_schemes;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS user_preferences;
DROP TABLE IF EXISTS likes;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS tags;
DROP TABLE IF EXISTS post_tags;


CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	username VARCHAR(100) UNIQUE NOT NULL,
	email VARCHAR(255) UNIQUE NOT NULL,
	password_hash TEXT NOT NULL,
	profile_picture_url TEXT,
	bio TEXT,
	role VARCHAR(50) DEFAULT 'user',
	visibility BOOLEAN DEFAULT TRUE
);

CREATE TABLE rooms (
	id SERIAL PRIMARY KEY,
	room_name VARCHAR(100) NOT NULL,
	user_id INT REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE todo_lists (
	id SERIAL PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	description TEXT,
	status VARCHAR(50) DEFAULT 'Pending',
	deadline TIMESTAMP,
	room_id INT REFERENCES rooms(id) ON DELETE CASCADE,
	user_id INT REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE home_styles (
    id SERIAL PRIMARY KEY,
    style_name VARCHAR(50) NOT NULL UNIQUE,
    description TEXT 
);

CREATE TABLE color_schemes (
    id SERIAL PRIMARY KEY,
    base_color VARCHAR(50) NOT NULL,
    complementary_color VARCHAR(50),
    accent_color VARCHAR(50),
    home_style_id INT REFERENCES home_styles(id)
);

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    image_url TEXT NOT NULL,
    user_id INT REFERENCES users(id) ON DELETE CASCADE,
    style_id INT REFERENCES home_styles(id),
    color_scheme_id INT REFERENCES color_schemes(id)
);

CREATE TABLE user_preferences (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id) ON DELETE CASCADE,
    preferred_color VARCHAR(50),
    preferred_home_style_id INT REFERENCES home_styles(id)
);

CREATE TABLE likes (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id) ON DELETE CASCADE,
    post_id INT REFERENCES posts(id) ON DELETE CASCADE,
    UNIQUE (user_id, post_id)
);

CREATE TABLE comments (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id) ON DELETE CASCADE,
    post_id INT REFERENCES posts(id) ON DELETE CASCADE,
    text TEXT NOT NULL
);

CREATE TABLE tags (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL
);


CREATE TABLE post_tags (
    post_id INT REFERENCES posts(id) ON DELETE CASCADE,
    tag_id INT REFERENCES tags(id) ON DELETE CASCADE,
    PRIMARY KEY (post_id, tag_id)
);

COMMIT TRANSACTION;