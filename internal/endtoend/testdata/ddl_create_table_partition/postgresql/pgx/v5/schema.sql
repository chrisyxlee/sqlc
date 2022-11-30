CREATE TABLE foo (
    id uuid PRIMARY KEY,
    other_id uuid NOT NULL
) PARTITION BY HASH (other_id);

CREATE TABLE foo_1 PARTITION OF foo FOR VALUES WITH (MODULUS 10, REMAINDER 0);