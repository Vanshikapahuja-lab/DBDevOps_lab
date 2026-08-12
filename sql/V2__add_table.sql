--liquibase formatted sql

--changeset yourname:2
CREATE TABLE example_audit (
  id         BIGSERIAL PRIMARY KEY,
  example_id BIGINT REFERENCES example(id),
  action     TEXT NOT NULL
);

--rollback DROP TABLE example_audit;
