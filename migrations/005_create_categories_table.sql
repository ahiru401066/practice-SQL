-- migrations/005_create_categories_table.sql

-- +goose Up
CREATE TABLE categories (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL
);

-- +goose Down
DROP TABLE IF EXISTS categories;