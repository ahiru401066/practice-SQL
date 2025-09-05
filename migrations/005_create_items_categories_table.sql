-- migrations/005_create_items_categories_table.sql

-- +goose Up
CREATE TABLE items_categories (
    item_id BIGINT NOT NULL,
    category_id BIGINT NOT NULL,
    PRIMARY KEY (item_id, category_id),
    FOREIGN KEY (item_id) REFERENCES items(id),
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

-- +goose Down
DROP TABLE IF EXISTS items_categories;