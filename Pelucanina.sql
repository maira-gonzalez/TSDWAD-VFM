/*---------------------------------------*/
/*creacion base de datos */
/*---------------------------------------*/
CREATE DATABASE tsdwad_maira;

/*---------------------------------------*/
/*seleccion de la base de datos */
/*---------------------------------------*/
USE tsdwad_maira;

/*---------------------------------------*/
/*creacion de tabla Dueno*/
/*---------------------------------------*/
CREATE TABLE `tsdwad_maira`.`Dueno` 
( `DNI` INT(8) NOT NULL ,
 `Nombre` VARCHAR(10) NOT NULL ,
  `Apellido` VARCHAR(20) NOT NULL ,
   `Telefono` VARCHAR(10) NOT NULL ,
    `Direccion` VARCHAR(20) NOT NULL,
    PRIMARY KEY (`DNI`)
    ) ENGINE = InnoDB;
/*---------------------------------------*/
/*consulta que lista todo los dueños cargados*/
/*---------------------------------------*/
SELECT * FROM Dueno;






/*---------------------------------------*/
/*creacion de tabla Perro */
/*---------------------------------------*/
CREATE TABLE `tsdwad_maira`.`Perro`
 ( `ID_Perro` INT NOT NULL AUTO_INCREMENT ,
  `Nombre` VARCHAR(65) NOT NULL ,
   `Fecha_nac` DATE NOT NULL DEFAULT '2022-08-11' ,
    `Sexo` VARCHAR(65) NOT NULL DEFAULT 'Hembra' ,
     `DNI_dueno` INT(8) NOT NULL ,
      PRIMARY KEY (`ID_Perro`),
      FOREIGN KEY (`DNI_Dueno`) REFERENCES `Dueno` (`DNI`)
      ) ENGINE = InnoDB;
/*---------------------------------------*/
/*consulta que lista todo los perros cargados*/
/*---------------------------------------*/
SELECT * FROM Perro;



/*---------------------------------------*/
/*creacion de tabla Historial*/
/*---------------------------------------*/
CREATE TABLE `tsdwad_maira`.`Historial`
 ( `ID_Historial` INT NOT NULL AUTO_INCREMENT ,
  `Fecha` DATE NOT NULL DEFAULT '2022-11-08' ,
   `Perro` VARCHAR(65) NOT NULL ,
    `Descripcion` VARCHAR(80) NOT NULL ,
     `Monto` FLOAT(5) NOT NULL ,
      PRIMARY KEY (`ID_Historial`), 
      FOREIGN KEY (`Perro`) REFERENCES `Perro` (`ID_Perro`)
      ) ENGINE = InnoDB;
/*---------------------------------------*/
/*consulta que lista todos los historiales cargados*/
/*---------------------------------------*/
SELECT * FROM Historial;

INSERT INTO `Dueno` 
(`DNI`,
 `Nombre`,
`Apellido`,
`Telefono`,
`Direccion`)
VALUES 
('9564812',
'German',
'Lopez',
'3515642314',
'Maestro vidal 1152')

INSERT INTO `Dueno`
 (`DNI`, `Nombre`,
  `Apellido`,
   `Telefono`,
    `Direccion`)
     VALUES 
     ('22654897',
      'Lucia',
       'Perez',
        '3514569652', 
         'Bermuda 587')


INSERT INTO `Dueno` 
(`DNI`,
 `Nombre`,
  `Apellido`,
   `Telefono`,
    `Direccion`)
     VALUES ('40561951',
      'Sara',
       'Gomez',
        '3516489514',
         'Tenerife 482')

INSERT INTO `Dueno`
 (`DNI`,
  `Nombre`,
   `Apellido`,
    `Telefono`,
     `Direccion`)
      VALUES ('21832749',
       'Adrian',
        'Toledo',
         '3516559513',
          'Bv San Juan 756')

INSERT INTO `Dueno`
 (`DNI`,
  `Nombre`,
   `Apellido`,
    `Telefono`,
     `Direccion`)
      VALUES ('23550840',
       'Pedro',
        'Garcia',
         '3513105561',
          'Jose Guardado 5541')

INSERT INTO `Dueno`
(`DNI`, 
`Nombre`,
`Apellido`,
`Telefono`, 
`Direccion`)
VALUES ('41546806',
    'Pedro', 
     'Villareal', 
      '3514585564', 
       'Velez 855')


INSERT INTO `Dueno`
(`DNI`, 
`Nombre`,
`Apellido`,
`Telefono`, 
`Direccion`)
VALUES ('25963741',
'Jose', 
'Vargas',
'3514559512',
'Duarte Quiros 3547')

INSERT INTO `Dueno`
(`DNI`, 
`Nombre`,
`Apellido`,
`Telefono`, 
`Direccion`)
VALUES ('30664801',
'Noelia',
 'Pereyra',
  '3513122588',
   'Bermudas 887')

INSERT INTO `Dueno`
(`DNI`, 
`Nombre`,
`Apellido`,
`Telefono`, 
`Direccion`)
VALUES ('43213892',
'Pedro',
'Lopez',
'3518559546',
'Bahamas 4457')

INSERT INTO `Dueno`
(`DNI`, 
`Nombre`,
`Apellido`,
`Telefono`, 
`Direccion`)
VALUES ('37951753',
'Dario',
'Monserrat',
'3513122574',
'Belardinelli 585')

INSERT INTO `Dueno`
(`DNI`, 
`Nombre`,
`Apellido`,
`Telefono`, 
`Direccion`)
VALUES ('41585455',
'Jazmin',
 'Montenegro',
  '3516554995',
   'Congreso 5517')

INSERT INTO `Dueno`
(`DNI`, 
`Nombre`,
`Apellido`,
`Telefono`, 
`Direccion`)
VALUES ('23123654',
 'Mabel',
  'Cuello',
   '3516795841',
    'Almirante Bronw 4115')

INSERT INTO `Dueno`
(`DNI`, 
`Nombre`,
`Apellido`,
`Telefono`, 
`Direccion`)
VALUES ('36711544',
 'Florencia',
  'Miras',
   '3513554884',
    'Villa Vicencio 5584')

INSERT INTO `Dueno`
(`DNI`, 
`Nombre`,
`Apellido`,
`Telefono`, 
`Direccion`)
VALUES ('43231035',
 'Mateo',
  'ortega',
   '3516449875',
    'Melincue 677')

INSERT INTO `Dueno`
(`DNI`, 
`Nombre`,
`Apellido`,
`Telefono`, 
`Direccion`)
VALUES ('22564897',
 'Mario',
  'Barrionuevo',
   '3514568221',
    'Comechingones 1255')

INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
  `Fecha_nac`,
   `Sexo`,
    `DNI_dueno`)
     VALUES (NULL,
      'Rocco'
       '2021-11-20',
        'Macho',
         '22564897')


INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
 `Fecha_nac`,
  `Sexo`, 
  `DNI_dueno`)
   VALUES (
    NULL,
    'Pantera',
    '2016-05-22',
    'Macho',
    '23426456')

