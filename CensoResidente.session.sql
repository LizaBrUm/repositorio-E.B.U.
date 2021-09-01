CREATE TABLE parqueo
    (
        id_parqueadero SERIAL,
        num_parqueadero VARCHAR,
        matri_parqueadero BIGINT,
        coef_parqueadero FLOAT,
    )

INSERT INTO parqueadero
(num_parqueadero, matri_parqueadero, coef_parqueadero) 
VALUES ('D12','234378236','14.64')

SELECT matri_parqueadero FROM parqueadero WHERE coef_parqueadero = '3'

UPDATE parqueadero SET COEF_parqueadero = '23.87' WHERE matri_parqueadero = '14.64'

DELETE FROM parqueadero WHERE num_parqueadero = 'D3'

CREATE TABLE mascota
    (
        id_mascota SERIAL,
        raza_mascota VARCHAR,
        nombre_mascota VARCHAR,
        vacuna_mascota VARCHAR,
        especie VARCHAR,
        id_residente INTEGER,
        CONSTRAINT PK_mascota PRIMARY KEY (id_mascota),
        CONSTRAINT FK_PK_residente FOREIGN KEY (id_residente) REFERENCES residente(id_residente)
    )

INSERT INTO mascota
(id_residente, raza_mascota, nombre_mascota, vacuna_mascota, especie)
VALUES ('4567', 'Siames','Romy','4254','Gato')

SELECT  nombre_mascota FROM mascota WHERE raza_mascosta = 'Tigrillo'

UPDATE mascota SET vacuna_mascota = '6543' WHERE vacuna_mascota = '4254'

DELETE FROM mascota WHERE id_mascota = '43902'

CREATE TABLE residente
    (
        id_residente SERIAL,
        name_residente VARCHAR,
        apellido_residente VARCHAR,
        edad INTEGER,
        religion VARCHAR,
        id_representante INTEGER,
        lugar_trabajo VARCHAR,
        EPS VARCHAR,
        tel_residente VARCHAR,
        vacuna VARCHAR,
        condicion_salud VARCHAR,
        correo_residente VARCHAR,
        estado_civil VARCHAR,
        CONSTRAINT PK_residente PRIMARY KEY (id_residente)
    )

INSERT INTO residente
(id_)

SELECT

UPDATE

DELETE

CREATE TABLE vehiculo
    (
        id_vehiculo SERIAL,
        tipo_vehiculo VARCHAR,
        placa VARCHAR,
        modelo VARCHAR,
        marca VARCHAR,
        id_residente VARCHAR
    )

INSERT INTO vehiculo
(matr_)

SELECT

UPDATE

DELETE

CREATE TABLE propietario
    (
        id_propietario SERIAL,
        tipo_id_proietario VARCHAR,
        num_identificacion VARCHAR,
        tel_propietario BIGINT,
        ocupacion VARCHAR,
        edad SMALLINT,
        nom_propietario VARCHAR,
        apel_propietario VARCHAR,
        vacuna BOOLEAN,
        razon_social VARCHAR,
        correo_propietario VARCHAR
    )

INSERT INTO propietario
(matr_)

SELECT

UPDATE

DELETE

CREATE TABLE apartamento
    (
        id_apto SERIAL,
        matricula_apto VARCHAR,
        num_apto VARCHAR,
        bloque VARCHAR,
        coef_apto FLOAT
    )

INSERT INTO apartamento
(matr_)

SELECT

UPDATE

DELETE

--Inserts (Create)
INSERT INTO parqueadero
(num_parqueadero, matri_parqueadero, coef_parqueadero) 
VALUES ('D10','370568945','12.48')

SELECT * FROM parqueadero

--Selects (Read)
SELECT num_parqueadero FROM parqueadero WHERE id_parqueadero = '1'

--Updates (Update)
UPDATE parqueadero SET num_parqueadero = 'D9' WHERE num_parqueadero = 'D10'

--Deletes (Delete)
DELETE FROM parqueadero WHERE id_parqueadero = '1'
