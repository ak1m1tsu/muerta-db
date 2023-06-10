CREATE TABLE IF NOT EXISTS users_storages (
    id_user integer NOT NULL,
    id_storage integer NOT NULL,
    CONSTRAINT pk_users_storages PRIMARY KEY (id_user, id_storage)
);
ALTER TABLE users_storages
ADD CONSTRAINT fk_users_storages_users FOREIGN KEY (id_user) REFERENCES users(id);
ALTER TABLE users_storages
ADD CONSTRAINT fk_users_storages_storages FOREIGN KEY (id_storage) REFERENCES storages(id);