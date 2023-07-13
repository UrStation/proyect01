-- Generado por Oracle SQL Developer Data Modeler 22.2.0.165.1149
--   en:        2023-06-26 10:23:11 CEST
--   sitio:      Oracle Database 21c
--   tipo:      Oracle Database 21c



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE ciudades (
    idciudad   INTEGER NOT NULL,
    nom_ciudad VARCHAR(20)
);

ALTER TABLE ciudades ADD CONSTRAINT ciudades_pk PRIMARY KEY ( idciudad );

CREATE TABLE empresas (
    idempresa   INTEGER NOT NULL,
    nom_empresa VARCHAR(20)
);

ALTER TABLE empresas ADD CONSTRAINT empresas_pk PRIMARY KEY ( idempresa );

CREATE TABLE lineas (
    idlinea            INTEGER NOT NULL,
    nom_linea          VARCHAR(25),
    directa            VARCHAR(1),
    empresas_idempresa INTEGER NOT NULL
);

ALTER TABLE lineas ADD CONSTRAINT lineas_pk PRIMARY KEY ( idlinea );

CREATE TABLE lineas_ciudades (
    lineas_idlinea    INTEGER NOT NULL,
    ciudades_idciudad INTEGER NOT NULL,
    orden             INTEGER,
    tiempo            INTEGER
);

ALTER TABLE lineas_ciudades ADD CONSTRAINT lineas_ciudades_pk PRIMARY KEY ( lineas_idlinea,
                                                                            ciudades_idciudad );

ALTER TABLE lineas_ciudades
    ADD CONSTRAINT lineas_ciudades_ciudades_fk FOREIGN KEY ( ciudades_idciudad )
        REFERENCES ciudades ( idciudad );

ALTER TABLE lineas_ciudades
    ADD CONSTRAINT lineas_ciudades_lineas_fk FOREIGN KEY ( lineas_idlinea )
        REFERENCES lineas ( idlinea );

ALTER TABLE lineas
    ADD CONSTRAINT lineas_empresas_fk FOREIGN KEY ( empresas_idempresa )
        REFERENCES empresas ( idempresa );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             4
-- CREATE INDEX                             0
-- ALTER TABLE                              7
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
