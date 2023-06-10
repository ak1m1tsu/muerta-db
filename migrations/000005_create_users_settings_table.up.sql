CREATE TABLE IF NOT EXISTS users_settings (
    id_user integer NOT NULL,
    id_setting integer NOT NULL,
    "value" varchar NOT NULL,
    CONSTRAINT pk_users_settings PRIMARY KEY (id_user, id_setting)
);
ALTER TABLE users_settings
ADD CONSTRAINT fk_users_settings_users FOREIGN KEY (id_user) REFERENCES users(id);
ALTER TABLE users_settings
ADD CONSTRAINT fk_users_settings_settings FOREIGN KEY (id_setting) REFERENCES settings(id);