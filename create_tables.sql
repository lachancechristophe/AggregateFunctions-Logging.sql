CREATE TABLE journal_evenements(
    id SERIAL PRIMARY KEY,
    usager varchar,
    action varchar,
    tablename varchar,
    champ varchar,
    data_before json,
    data_after json,
    moment date
)

CREATE TABLE etoiles (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100),
    distance_km bigint,
    diametre int
)

CREATE TABLE villes (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100),
    nb_habitants int,
    superficie_km2 float
)