-- migrations/002_create_profiles_table.sql

-- +goose Up
CREATE TABLE profiles (
    user_id BIGINT PRIMARY KEY,
    address VARCHAR(255),
    phone VARCHAR(20),
    birthday DATE,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- +goose Down
DROP TABLE IF EXISTS profiles;