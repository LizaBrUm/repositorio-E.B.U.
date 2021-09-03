CREATE TABLE parqueo
    (
        id_parqueo SERIAL,
        num_parqueo VARCHAR,
        matri_parqueo BIGINT,
        coef_parqueo FLOAT,
        CONSTRAINT PK_parqueo PRIMARY KEY (id_parqueo),
        CONSTRAINT FK_PK_residente FOREIGN KEY (id_residente) REFERENCES residente(id_residente)
    )

INSERT INTO parqueo
(num_parqueo, matri_parqueo, coef_parqueo)
VALUES('D3', '473298479', '23.87'),('D12','234378236','14.64')

SELECT matri_parqueo FROM parqueo WHERE id_parqueo = '62'
UPDATE parqueo SET coef_parqueo = '23.87' WHERE matri_parqueo = '14.64'
DELETE FROM parqueo WHERE num_parqueo = 'D3'

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
VALUES ('4567', 'Siames','Romy','7254','Gato'),('0912', 'Tigrillo','JJ','6590','Gato')

SELECT  nombre_mascota FROM mascota WHERE id_mascosta = '86'
UPDATE mascota SET vacuna_mascota = '6590' WHERE vacuna_mascota = '7254'
DELETE FROM mascota WHERE id_residente = '43902'

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
(name_residente, apellido_residente, edad, religion, id_representatante, lugar_trabajo, EPS, tel_residente, vacuna, condicion_salud, correo_residente, estado_civil)
VALUES ('Julio', 'Hernandez', '36', 'Catolico', '28304', 'Oficina Colpensas', 'COOMEVA', '3384920', 'PHAISER', 'Saludable', 'julioh@gmail.com', 'Viudo'),
('Diego', 'Fernandez', '29', 'Judio', '35497', 'Profesor de Ingles ', 'COOMEVA', '8954902', 'PHAISER', 'Saludable', 'diegof@hotmail.com', 'Soltero')

SELECT apellido_residente FROM residente WHERE id_residente = '67'
UPDATE residente SET lugar_trabajo = 'Oficina Colpensas' WHERE lugar_trabajo = 'Profesor de Ingles'
DELETE FROM residente WHERE vacuna = '4893294'

CREATE TABLE vehiculo
    (
        id_vehiculo SERIAL,
        tipo_vehiculo VARCHAR,
        placa VARCHAR,
        modelo VARCHAR,
        marca VARCHAR,
        id_residente VARCHAR,
        CONSTRAINT PK_vehiculo PRIMARY KEY (id_vehiculo),
        CONSTRAINT FK_PK_residente FOREIGN KEY (id_residente) REFERENCES residente(id_residente)
    )

INSERT INTO vehiculo
(tipo_vehiculo, placa, modelo, marca, id_residente)
VALUES ('Moto','UEN43A','2016','4x4','35497'),('Carro','SDE342','2018','Chevrolet','28304')

SELECT placa FROM vehiculo Where id_vehiculo = '41'
UPDATE vehiculo     SET modelo = '2016' WHERE = '2018'
DELETE FROM vehiculo WHERE placa = '892IER'

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

INSERT TABLE apartamento-propietario
    (
        id_apartamento-propietario SERIAL,
        id_apartamento VARCHAR,
        id_propietario VARCHAR
        CONSTRAINT PK_apartamento-propietario PRIMARY KEY (id_apartamento-propietario),
        CONSTRAINT FK_PK_apartamento FOREIGN KEY (id_apartamento) REFERENCES apartamento(id_apto)
        CONSTRAINT FK_PK_propietario FOREIGN KEY (id_propietario) REFERENCES propietario(id_propietario)
    )

INSERT INTO apartamento
(matr_)

SELECT

UPDATE

DELETE

INSERT TABLE parqueadero-propietario
    (
        id_parqueadero-propietario SERIAL,
        id_parqueadero VARCHAR,
        id_propietario VARCHAR
        CONSTRAINT PK_parqueadero-propietario PRIMARY KEY (id_parqueadero-propietario),
        CONSTRAINT FK_PK_parqueo FOREIGN KEY (id_parqueo) REFERENCES parqueo(id_parque)
        CONSTRAINT FK_PK_propietario FOREIGN KEY (id_propietario) REFERENCES propietario(id_propietario)
    )

INSERT INTO apartamento
(matr_)

SELECT

UPDATE

DELETE

SELECT * FROM pg_catalog.pg_tables;

--Inserts (Create)
-- INSERT INTO parqueadero
-- (num_parqueadero, matri_parqueadero, coef_parqueadero) 
-- VALUES ('D10','370568945','12.48')

-- SELECT * FROM parqueadero

--Selects (Read)
-- SELECT num_parqueadero FROM parqueadero WHERE id_parqueadero = '1'

--Updates (Update)
-- UPDATE parqueadero SET num_parqueadero = 'D9' WHERE num_parqueadero = 'D10'

--Deletes (Delete)
-- DELETE FROM parqueadero WHERE id_parqueadero = '1'

