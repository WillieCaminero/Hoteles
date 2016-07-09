

DROP TABLE RESERVACIONES;
DROP TABLE ESTADOS_RESERVACIONES;
DROP TABLE HABITACIONES;
DROP TABLE TIPOS_HABITACIONES;
DROP TABLE ROLES;
DROP TABLE TIPOS_ROLES;
DROP TABLE USUARIOS; 
DROP TABLE MENSAJES_SISTEMA;  

CREATE TABLE USUARIOS
(
  ID                    NUMBER GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) PRIMARY KEY,
  NOMBRES               NVARCHAR2(50)                    NOT NULL,
  APELLIDOS             NVARCHAR2(50)                    NOT NULL,
  CEDULA                CHAR(11)             UNIQUE      NOT NULL,
  TELEFONO              CHAR(10)                         NOT NULL,
  CELULAR               CHAR(10)                         NOT NULL,
  CORREO                NVARCHAR2(50)        UNIQUE      NOT NULL, 
  USUARIO               NVARCHAR2(25)        UNIQUE      NOT NULL,
  CLAVE                 NVARCHAR2(100)                   NOT NULL,
  ESTADO                NUMBER(1,0)                      NOT NULL 
);

CREATE TABLE TIPOS_ROLES
(
  ID                    NUMBER GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) PRIMARY KEY,
  DESCRIPCION           NVARCHAR2(100)       UNIQUE      NOT NULL,
  ESTADO                NUMBER(1,0)                      NOT NULL 
);

CREATE TABLE ROLES
(
  ID                    NUMBER GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) PRIMARY KEY,
  ID_USUARIO            NUMBER,
  ID_TIPO_ROL           NUMBER,
  CONSTRAINT ID_ROLES_USUARIOS_FK FOREIGN KEY (ID_USUARIO) REFERENCES USUARIOS(ID),
  CONSTRAINT ID_ROLES_TIPO_ROL_FK FOREIGN KEY (ID_USUARIO) REFERENCES TIPOS_ROLES(ID)  
);

CREATE TABLE TIPOS_HABITACIONES
(
  ID                    NUMBER GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) PRIMARY KEY,
  DESCRIPCION           NVARCHAR2(100)       UNIQUE      NOT NULL,
  ESTADO                NUMBER(1,0)                      NOT NULL 
);

CREATE TABLE HABITACIONES
(
  ID                    NUMBER GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) PRIMARY KEY,
  ID_TIPO_HABITACION    NUMBER,
  PRECIO_POR_NOCHE      NUMBER(8,2)                      NOT NULL,
  CANT_MAX_PERSONAS     NUMBER(1,0)                      NOT NULL,
  ESTADO                NUMBER(1,0)                      NOT NULL,
 CONSTRAINT ID_TIPO_HABITACION_FK FOREIGN KEY (ID_TIPO_HABITACION) REFERENCES TIPOS_HABITACIONES(ID)
);

CREATE TABLE RESERVACIONES
(
  ID                    NUMBER GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) PRIMARY KEY,
  ID_HABITACION         NUMBER,
  ID_USUARIO            NUMBER,
  FECHA_DESDE           DATE                             NOT NULL,
  FECHA_HASTA           DATE                             NOT NULL,
  MONTO_ESTADIA         NUMBER(8,2)                      NOT NULL,
  CONSTRAINT ID_HABITACION_FK FOREIGN KEY (ID_HABITACION) REFERENCES HABITACIONES(ID), 
  CONSTRAINT ID_USUARIO_FK    FOREIGN KEY (ID_USUARIO)    REFERENCES USUARIOS(ID)
);

CREATE TABLE MENSAJES_SISTEMA
(
    ID              	NUMBER  PRIMARY KEY,
    DESCRIPCION     	NVARCHAR2(200)       UNIQUE        NOT NULL
);

































Insert into MENSAJES_SISTEMA
   (ID, DESCRIPCION)
 Values
   (6, 'Error al tratar de registrar usuario');
Insert into MENSAJES_SISTEMA
   (ID, DESCRIPCION)
 Values
   (5, 'Usuario registrado exitosamente.');
Insert into MENSAJES_SISTEMA
   (ID, DESCRIPCION)
 Values
   (4, 'El correo no está disponible.');
Insert into MENSAJES_SISTEMA
   (ID, DESCRIPCION)
 Values
   (3, 'La cédula no está disponible.');
Insert into MENSAJES_SISTEMA
   (ID, DESCRIPCION)
 Values
   (2, 'El usuario no está disponible.');
Insert into MENSAJES_SISTEMA
   (ID, DESCRIPCION)
 Values
   (1, 'El usuario y/o contraseña son incorrectos.');
COMMIT;

Insert into USUARIOS
   (NOMBRES, APELLIDOS, CEDULA, TELEFONO, CELULAR, 
    CORREO, USUARIO, CLAVE, ESTADO)
 Values
   ('Willie ', 'Caminero', '22301670067', '8099999999', '8288888888', 
    'WillieMn08@hotmail.com', 'wcaminero', '12345678', 1);
COMMIT;

Insert into TIPOS_HABITACIONES
   (ID, DESCRIPCION, ESTADO)
 Values
   (1, 'Normal', 1);
Insert into TIPOS_HABITACIONES
   (ID, DESCRIPCION, ESTADO)
 Values
   (2, 'Especial', 1);
Insert into TIPOS_HABITACIONES
   (ID, DESCRIPCION, ESTADO)
 Values
   (3, 'VIP', 1);
COMMIT;

Insert into HABITACIONES
   (ID, ID_TIPO_HABITACION, PRECIO_POR_NOCHE, CANT_MAX_PERSONAS, ESTADO)
 Values
   (1, 1, 100, 6, 1);
Insert into HABITACIONES
   (ID, ID_TIPO_HABITACION, PRECIO_POR_NOCHE, CANT_MAX_PERSONAS, ESTADO)
 Values
   (2, 2, 200, 4, 1);
Insert into HABITACIONES
   (ID, ID_TIPO_HABITACION, PRECIO_POR_NOCHE, CANT_MAX_PERSONAS, ESTADO)
 Values
   (3, 3, 400, 2, 1);
COMMIT;

SET DEFINE OFF;
Insert into RESERVACIONES
   (ID, ID_HABITACION, ID_USUARIO, FECHA_DESDE, FECHA_HASTA, 
    MONTO_ESTADIA)
 Values
   (1, 1, 1, TO_DATE('07/08/2016 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), TO_DATE('07/09/2016 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 
    100);
Insert into RESERVACIONES
   (ID, ID_HABITACION, ID_USUARIO, FECHA_DESDE, FECHA_HASTA, 
    MONTO_ESTADIA)
 Values
   (2, 2, 1, TO_DATE('07/04/2016 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), TO_DATE('07/07/2016 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 
    600);
Insert into RESERVACIONES
   (ID, ID_HABITACION, ID_USUARIO, FECHA_DESDE, FECHA_HASTA, 
    MONTO_ESTADIA)
 Values
   (3, 3, 1, TO_DATE('07/01/2016 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), TO_DATE('07/03/2016 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 
    1200);
COMMIT;

