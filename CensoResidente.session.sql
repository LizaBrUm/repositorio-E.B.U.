CREATE TABLE parqueadero
    (
        id_parquedero SERIAL,
        num_parqueadero VARCHAR,
        matri_parqueadero BIGINT,
        coef_parqueo FLOAT,
        CONSTRAINT PK_parqueadero PRIMARY KEY (id_parqueadero),
        CONSTRAINT FK_PK_residente FOREIGN KEY (id_residente) REFERENCES residente(id_residente)
    )

INSERT INTO parqueadero
(num_parqueadero, matri_parqueadero, coef_parqueadero)
VALUES('D3', '473298479', '23,87'),('D12','234378236','14,64')

SELECT matri_parqueadero FROM parqueadero WHERE id_parqueadero = '62'
UPDATE parqueadero SET coef_parqueadero = '23.87' WHERE matri_parqueadero = '473298479'
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
(raza_mascota, nombre_mascota, vacuna_mascota, especie)
VALUES ('Siames','Romy','7254','Gato'),('Tigrillo','JJ','6590','Gato')

SELECT  vacuna_mascota FROM mascota WHERE id_mascota = '86'
UPDATE mascota SET vacuna_mascota = '6590' WHERE vacuna_mascota = '7254'
DELETE FROM mascota WHERE id_residente = '43902'

CREATE TABLE residente
    (
        id_residente SERIAL,
        name_residente VARCHAR,
        apellido_residente VARCHAR,
        edad INTEGER,
        religion VARCHAR,
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
(name_residente, apellido_residente, edad, religion, lugar_trabajo, EPS, tel_residente, vacuna, condicion_salud, correo_residente, estado_civil)
VALUES ('Julio', 'Hernandez', '36', 'Catolico', 'Oficina Colpensas', 'COOMEVA', '3384920', 'PHAISER', 'Saludable', 'julioh@gmail.com', 'Viudo'),
('Diego', 'Fernandez', '29', 'Judio', 'Profesor de Ingles ', 'COOMEVA', '8954902', 'PHAISER', 'Saludable', 'diegof@hotmail.com', 'Soltero')

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
UPDATE vehiculo SET modelo ='2016' WHERE modelo ='2018'
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
        correo_propietario VARCHAR,
        CONSTRAINT PK_propietario PRIMARY KEY (id_propietario)
    )

INSERT INTO propietario
(tipo_id_proietario,num_identificacion,tel_propietario,ocupacion,edad,nom_propietario,apel_propietario,vacuna,razon_social,correo_propietario)
VALUES ('48238', '1108549512', '3159295057', 'Administrador de empresas', '36', 'Jose', 'Manchoa', 'False', 'Empresarios S.R.L', 'Jose.manchoa@gmail.com'),
('89520', '21958286120', '3005871853', 'Abogado', '42', 'Martin', 'Gomez', 'True', 'Abogado.teacompaña', 'Martin.Gomez@gmail.com')

SELECT num_identificacion FROM propietario Where id_propietario = '54892'
UPDATE propietario SET edad ='42' WHERE edad ='36'
DELETE FROM propietario WHERE ocupacion = 'Aministrador de Empresas'

CREATE TABLE apartamento
    (
        id_apto SERIAL,
        matricula_apto VARCHAR,
        num_apto VARCHAR,
        bloque VARCHAR,
        coef_apto FLOAT,
        CONSTRAINT PK_apartamento PRIMARY KEY (id_apto)
    )

INSERT INTO apartamento
(matricula_apto, num_apto, bloque, coef_apto)
VALUES('3872', '502', 'C3','53.6'), ('5489', '202', 'A2','28.5')

SELECT bloque FROM apartamento Where id_apto = '249892'
UPDATE apartamento SET matricula_apto ='3872' WHERE matricula_apto ='5489'
DELETE FROM apartamento WHERE coef_apto = '53.6'

CREATE TABLE aptopropietario
    (
        id_aptopropietario SERIAL,
        id_apartamento VARCHAR,
        id_propietario VARCHAR,
        CONSTRAINT PK_aptopropietario PRIMARY KEY (id_aptopropietario),
        CONSTRAINT FK_PK_apartamento FOREIGN KEY (id_apto) REFERENCES apartamento(id_apto),
        CONSTRAINT FK_PK_propietario FOREIGN KEY (id_propietario) REFERENCES propietario(id_propietario)
    )

INSERT INTO aptopropietario
(id_apartamento, id_propietario)
VALUES('249892', '54892'),('984532', '37692')

SELECT id_propietario FROM aptopropietario Where id_aptopropietario = '78698'
UPDATE aptopropietario SET id_apartamento ='54892' WHERE id_apartamento ='37692'
DELETE FROM aptopropietario WHERE id_aptopropietario = '78698'

CREATE TABLE parquepropietario
    (
        id_parquepropietario SERIAL,
        id_parqueadero VARCHAR,
        id_propietario VARCHAR,
        CONSTRAINT PK_parquepropietario PRIMARY KEY (id_parquepropietario),
        CONSTRAINT FK_PK_parqueadero FOREIGN KEY (id_parqueadero) REFERENCES parqueadero(id_parqueadero),
        CONSTRAINT FK_PK_propietario FOREIGN KEY (id_propietario) REFERENCES propietario(id_propietario)
    )

INSERT INTO parquepropietario
(id_parqueadero, id_propiedad)
VALUES('61','54892'),('64','37692')

SELECT id_parqueadero FROM parquepropietario Where id_parquepropietario = '36'
UPDATE parquepropietario SET id_propiedad ='64' WHERE id_propiedad ='62'
DELETE FROM parquepropietario WHERE id_parquepropietario = '36'

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

