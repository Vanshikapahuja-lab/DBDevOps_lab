--liquibase formatted sql

--changeset yourname:1
CREATE TABLE example (
  id   BIGSERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

--rollback DROP TABLE example;
