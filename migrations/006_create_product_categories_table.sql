-- migrations/006_create_products_categories_table.sql

-- +goose Up
CREATE TABLE products_categories (
    product_id BIGINT NOT NULL,
    category_id BIGINT NOT NULL,
    PRIMARY KEY (product_id, category_id),
    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

-- +goose Down
DROP TABLE IF EXISTS products_categories;