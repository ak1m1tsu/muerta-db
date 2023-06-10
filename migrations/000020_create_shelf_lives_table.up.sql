CREATE TABLE IF NOT EXISTS shelf_lives (
    id serial NOT NULL,
    id_product integer NOT NULL,
    id_storage integer NOT NULL,
    id_measure integer NOT NULL,
    id_user integer NOT NULL,
    quantity real DEFAULT 1 NOT NULL,
    purchase_date timestamp,
    end_date timestamp NOT NULL,
    created_at timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_at timestamp,
    CONSTRAINT pk_shelf_lives PRIMARY KEY (id)
);
ALTER TABLE shelf_lives
ADD CONSTRAINT fk_shelf_lives_products FOREIGN KEY (id_product) REFERENCES products(id);
ALTER TABLE shelf_lives
ADD CONSTRAINT fk_shelf_lives_storages FOREIGN KEY (id_storage) REFERENCES storages(id);
ALTER TABLE shelf_lives
ADD CONSTRAINT fk_shelf_lives_measures FOREIGN KEY (id_measure) REFERENCES measures(id);
ALTER TABLE shelf_lives
ADD CONSTRAINT fk_shelf_lives_users FOREIGN KEY (id_user) REFERENCES users(id);