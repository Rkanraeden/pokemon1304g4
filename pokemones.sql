\c ludovico
DROP DATABASE pokemones;
CREATE DATABASE pokemones;
\c pokemones

CREATE TABLE pokemones(
    pokedex SERIAL,
    nombre VARCHAR(30),
    tipo1 VARCHAR(20),
    tipo2 VARCHAR(20),
    PRIMARY KEY(pokedex)
);
SELECT * FROM pokemones;

\copy pokemones FROM 'pokemonesKanto.csv' csv header;
SELECT * FROM pokemones LIMIT 2;

CREATE TABLE mis_pokemones(
    pokedex INT,
    fecha_captura DATE,
    lugar VARCHAR(30),
    huevo BOOLEAN,
    peso FLOAT,
    estatura FLOAT,
    FOREIGN KEY (pokedex) REFERENCES pokemones(pokedex)
);
SELECT * FROM mis_pokemones;

\copy mis_pokemones FROM 'mis_pokemones.csv' csv header;
SELECT * FROM mis_pokemones LIMIT 5;

SELECT * FROM mis_pokemones;
SELECT * FROM pokemones;