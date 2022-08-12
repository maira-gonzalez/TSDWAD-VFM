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
  VALUES NULL,
(`43230233`,
 `Pedro`,
 `Lopez`,
  `3516784592`, 
  `Jose Guardado 567`)

INSERT INTO `Dueno`
 (`DNI`,
 `Nombre`,
 `Apellido`,
  `Telefono`, 
  `Direccion`)
  VALUES NULL,
(`21348932`,
 `Sara`,
 `Gomez`,
  `3513219876`, 
  `Bermudas 769`)
  
  INSERT INTO `Dueno`
 (`DNI`,
 `Nombre`,
 `Apellido`,
  `Telefono`, 
  `Direccion`)
  VALUES NULL,
(`40453712`,
 `German`,
 `Gonzalez`,
  `3513886123`, 
  `Congreso 1567`)

  INSERT INTO `Dueno`
 (`DNI`,
 `Nombre`,
 `Apellido`,
  `Telefono`, 
  `Direccion`)
  VALUES NULL,
(`43230233`,
 `Pedro`,
 `Lopez`,
  `3516784592`, 
  `Jose Guardado 567`)






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






































UPDATE `Perro`
 SET `Fecha_nac` = '2021-11-20' 
 WHERE `Perro`.
 `ID_Perro` = 3

 UPDATE `Perro`
  SET `Fecha_nac` = '2011-02-23' 
  WHERE `Perro`.
  `ID_Perro` = 4