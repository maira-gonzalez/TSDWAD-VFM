INSERT INTO `Perro` 
(`ID_Perro`,
 `Nombre`,
 `Fecha_nac`,
  `Sexo`, 
  `DNI_dueno`)
   VALUES (
    NULL,
    'Leon',
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