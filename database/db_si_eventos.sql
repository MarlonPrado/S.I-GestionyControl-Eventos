CREATE DATABASE db_eventos;
USE  db_eventos;

-- Tabla Usuarios
CREATE TABLE user(
    id INT(11) NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    edad INT(2) NOT NULL,
    telefono VARCHAR(10) NOT NULL,
    correo  VARCHAR(25) NOT NULL,
    clave  VARCHAR(500) NOT NULL,
    clavef  VARCHAR(500) NOT NULL,
    foto VARCHAR(500) NOT NULL,
    rol VARCHAR(10) NOT NULL,
    pregunta VARCHAR(30) NOT NULL,
    respuesta VARCHAR(30) NOT NULL
);


ALTER TABLE user
    ADD PRIMARY KEY(id);



ALTER TABLE user
    MODIFY id INT(11) NOT NULL AUTO_INCREMENT;

-- Tabla Pruebas
CREATE TABLE evento (
    ide INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombrep  VARCHAR(20) NOT NULL,
    director  VARCHAR(20) NOT NULL,
    tipodeprueba VARCHAR(20) NOT NULL,
    descrp VARCHAR(200) NOT NULL,
    imagen VARCHAR(500) NOT NULL,
    descrpe VARCHAR(2000) NOT NULL,
    imagen2 VARCHAR(500) NOT NULL,
    fechai date NULL,
    fechaf  date NULL,
    lugar VARCHAR(50) NOT NULL,
    hora VARCHAR(20) NOT NULL,
    user_id INT(11),
    created_at timestamp  NOT NULL DEFAULT current_timestamp,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES user(id)
);
--ALTER TABLE prueba
    --MODIFY anioingres INT(4) NOT NULL ;

ALTER TABLE evento
    MODIFY ide INT(11) NOT NULL  AUTO_INCREMENT, AUTO_INCREMENT=1;
    MODIFY user_id INT(11) ;
ALTER TABLE evento
 MODIFY user_id INT(11) ;


DESCRIBE user;
DESCRIBE prueba;