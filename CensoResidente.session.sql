CREATE TABLE parqueo
    (
        id_parqueadero SERIAL,
        num_parqueadero VARCHAR,
        matri_parqueadero BIGINT,
        coef_parqueadero FLOAT,
    )

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

-- Inserts (CREATE)
INSERT INTO mascota
(id_residente, raza_mascota, nombre_mascota, vacuna_mascota, especie, id_residente)
VALUES ('4567', 'Siames','Romy','No','Gato')

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

CREATE TABLE vehiculo
    (
        id_vehiculo SERIAL,
        tipo_vehiculo VARCHAR,
        placa VARCHAR,
        modelo VARCHAR,
        marca VARCHAR,
        id_residente VARCHAR,

    )
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

INSERT INTO parqueadero
(num_parqueadero, matri_parqueadero, coef_parqueadero) 
VALUES ('D12','234378236','14.64')

SELECT matri_parqueadero FROM parqueadero WHERE coef_parqueadero = '3'

UPDATE parqueadero SET matri_parqueadero = 'D11' WHERE matri_parqueadero = 'D12'

DELETE FROM parqueadero WHERE coef_parqueadero = '2'

INSERT INTO mascosta
(id_)

SELECT  

UPDATE

DELETE

INSERT INTO residente
(id_)

SELECT

UPDATE

DELETE

INSERT INTO vehiculo
(matr_)

SELECT

UPDATE

DELETE
