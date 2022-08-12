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



/*-----------------------------------------------*/
/*Carga datos Dueno*/
/*-----------------------------------------------*/
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

INSERT INTO `Dueno`
(`DNI`, 
`Nombre`,
`Apellido`,
`Telefono`, 
`Direccion`)
VALUES ('21394947',
 'Mario',
  'Gonzalez',
   '3514568221',
    'Comechingones 932')



/*--------------------------------------*/
/*Carga datos Perros*/
/*--------------------------------------*/
INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
  `Fecha_nac`,
   `Sexo`,
    `DNI_dueno`)
VALUES (NULL,
 'Lola',
  '2011-04-11',
   'Hembra',
    '9564812')

INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
  `Fecha_nac`,
   `Sexo`,
    `DNI_dueno`)
VALUES (NULL,
 'Pedrito',
  '2012-03-11',
   'Macho',
    '21394947')
    
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
         '21832749')


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
    '43231035')

INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
 `Fecha_nac`,
  `Sexo`, 
  `DNI_dueno`)
   VALUES (
    NULL,
    'Hanna',
    '2022-01-22',
    'Hembra',
    '21394947')

INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
 `Fecha_nac`,
  `Sexo`, 
  `DNI_dueno`)
   VALUES (
    NULL,
    'Pancho',
    '2022-03-04',
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
    'Joaquin',
    '2019-10-15',
    'Macho',
    '22654897')

INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
 `Fecha_nac`,
  `Sexo`, 
  `DNI_dueno`)
   VALUES (
    NULL,
    'Nala',
    '2021-02-20',
    'Hembra',
    '23123654')

INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
 `Fecha_nac`,
  `Sexo`, 
  `DNI_dueno`)
   VALUES (
    NULL,
    'Lara',
    '2022-05-22',
    'Hembra',
    '40561951')

INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
 `Fecha_nac`,
  `Sexo`, 
  `DNI_dueno`)
   VALUES (
    NULL,
    'Negro',
    '2016-12-01',
    'Macho',
    '41585455')

INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
 `Fecha_nac`,
  `Sexo`, 
  `DNI_dueno`)
   VALUES (
    NULL,
    'Rocky',
    '2022-01-31',
    'Macho',
    '25963741')

INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
 `Fecha_nac`,
  `Sexo`, 
  `DNI_dueno`)
   VALUES (
    NULL,
    'Daisy',
    '2021-04-10',
    'Hembra',
    '40561951')

INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
 `Fecha_nac`,
  `Sexo`, 
  `DNI_dueno`)
   VALUES (
    NULL,
    'Sandi',
    '2014-09-20',
    'Hembra',
    '30664801')

INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
 `Fecha_nac`,
  `Sexo`, 
  `DNI_dueno`)
   VALUES (
    NULL,
    'Hercules',
    '2018-04-16',
    'Macho',
    '37951753')

INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
 `Fecha_nac`,
  `Sexo`, 
  `DNI_dueno`)
   VALUES (
    NULL,
    'Matilda',
    '2015-10-22',
    'Hembra',
    '23550840')

INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
 `Fecha_nac`,
  `Sexo`, 
  `DNI_dueno`)
   VALUES (
    NULL,
    'Milo',
    '2019-01-05',
    'Macho',
    '41546806')

INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
 `Fecha_nac`,
  `Sexo`, 
  `DNI_dueno`)
   VALUES (
    NULL,
    'Luna',
    '2020-07-13',
    'Hembra',
    '36711544')

INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
 `Fecha_nac`,
  `Sexo`, 
  `DNI_dueno`)
   VALUES (
    NULL,
    'Samu',
    '2022-06-03',
    'Macho',
    '37951753')


SELECT *
FROM `Perro`
    JOIN `Dueno` ON `Perro`.`DNI_dueno` = `Dueno`.`DNI`
WHERE
    `Dueno`.`DNI` = '21394947';


/*-------------------------------*/
/*Carga datos Historial*/
/*-------------------------------*/

INSERT INTO `Historial`
 (`ID_Historial`,
  `Fecha`,
   `Perro`,
    `Descripcion`,
     `Monto`)
    VALUES
    (NULL,
    '2022-07-15',
    'Lara',
    'Baño completo',
    '2850'),
    (NULL,
    '2022-07-22',
    'Hercules',
    'Baño y corte de pelo',
    '2200'),
    (NULL,
    '2022-05-12',
    'Rocky',
    'Corte de uñas',
    '850'),
    (NULL,
    '2022-04-14',
    'Pancho',
    'Baño y secado',
    '1490'),
    (NULL,
    '2022-07-03',
    'Nala',
    'Baño y corte de uñas',
    '2250'),
    (NULL,
    '2022-07-22',
    'Sandi',
    'Baño completo',
    '2850'),
    (NULL,
    '2022-04-30',
    'Pantera',
    'Baño y secado',
    '1990'),
    (NULL,
    '2022-07-15',
    'Daisy',
    'Baño y corte de uñas',
    '2250'),
    (NULL,
    '2022-07-26',
    'Samu',
    'Baño completo con descuento',
    '2250'),
    (NULL,
    '2022-06-21',
    'Matilda',
    'Baño y secado',
    '1990'),
    (NULL,
    '2022-07-09',
    'Rocky',
    'Baño completo y entrega a domicilio',
    '3000'),
    (NULL,
    '2022-05-15',
    'Milo',
    'Baño completo',
    '2750'),
    (NULL,
    '2022-04-14',
    'Sandi',
    'Baño completo',
    '2650'),
    (NULL,
    '2022-01-22',
    'Hercules',
    'Baño completo',
    '2150'),
    (NULL,
    '2022-02-02',
    'Luna',
    'Baño y corte de uñas',
    '2050'),
    (NULL,
    '2021-09-10',
    'Milo',
    'Baño completo',
    '1450'),
    (NULL,
    '2021-11-18',
    'Daisy',
    'Baño completo',
    '1300'),
    (NULL,
    '2021-06-23',
    'Pantera',
    'Baño y corte de uñas',
    '1150'),
    (NULL,
    '2020-10-22',
    'Rocco',
    'Baño completo',
    '950'),
    (NULL,
    '2022-07-22',
    'Hercules',
    'Baño completo',
    '2850');




ALTER TABLE `Historial` CHANGE `Fecha` `Fecha` DATE NOT NULL;