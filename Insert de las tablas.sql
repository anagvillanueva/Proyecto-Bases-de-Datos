-- Insert de la tabla Pais
insert into pais values
(1, 'Mexico','MEX'),
(2, 'Francia','FRA'),
(3, 'Peru', 'PER'),
(4, 'Chile', 'CHL'),
(5, 'Canada', 'CAN'),
(6, 'Australia', 'AUS'),
(7, 'Estados Unidos', 'USA'),
(8, 'Rusia', 'RUS'),
(9, 'Reino Unido', 'GBR'),
(10, 'China', 'CHN'),
(11, 'Ecuador', 'EC'),
(12, 'Alemania', 'DEU'),
(13, 'Italia', 'ITA'),
(14, 'Belgica', 'BEL'),
(15, 'Japon', 'JP');

-- Insert de la tabla Institucion
INSERT INTO institucion VALUES ('411', 'FES Aragon'), 
(303, 'FES Iztacala'),
(91, 'Bristol University'),
(102, 'FES Cuatitlan'),
(5, 'Facultad de Quimica'),
(11, 'Facultad Ingenieria'),
(17, 'Facultad de ciencias de la tierra'),
(66, 'Instituto de biotecnologia'),
(92, 'centro de nanociencias y nanotecnologia'),
(95, 'CFATA'),
(1066, 'ENES Juriquilla'),
(123, 'ESIME Ticoman'),
(658, 'UANL'),
(345, 'UAEH'),
(254, 'UV'),
(456, 'ESIA Zacatenco'),
(678, 'UPIICSA'),
(23, 'BUAP'),
(523, 'Massachusetts Institute of Technology'),
(485, 'UABC'),
(85, 'UACM'),
(963, 'UAQ'),
(13, 'UACJ'),
(431, 'TESE'),
(3512, 'Harvard University'),
(3258, 'University for Oxford'),
(12, 'Instituto de Fisica'),
(623, 'Instituto de biologia'),
(8000, 'IIMAS'),
(6325, 'Wellcome Trust Sanger Institute'),
(131, 'Instituto Suizo de bioinformatica'),
(4210, 'Instituto Gustave Roussy'),
(1230, 'Instituto Broad'),
(106, 'Laboratorio Europeo de Biologia Molecular'),
(845, 'UCL');

-- Insert de la tabla Areas
INSERT INTO areas VALUES (1, 'Ingenieria y tecnologia'),
(2, 'Ciencias naturales y exactas'),
(3, 'Ciencias de la salud'),
(4, 'Ciencias sociales y administrativas'),
(5, 'Educacion y humanidades');

-- Insert de la tabla Temas_Revista
insert into temas_revista values
(1,'Investigacion'),
(2,'Tecnico-Profesional'),
(3,'Divulgacion'),
(4, 'Cultural'),
(5, 'Multidisciplina'),
(7,'Biologia y quimica'),
(8,'Biotecnologia'),
(9, 'Matematicas'),
(10, 'Medicina');

-- Insert de la tabla Grupos_Investigacion 
INSERT INTO grupos_investigacion VALUES (11, 'Mateatletas', 1),
(12, 'Biolocos', 2),
(13, 'Grupo por naturaleza', 2),
(15, 'Ingeniebrios', 1),
(16, 'ICOlogos', 1),
(18, 'ADP', 2),
(19, 'Ribonucleicos', 2),
(20, 'Boinas azules', 1);

-- Insert de la tabla Lab_campus
INSERT INTO lab_campus VALUES (19, 'Laboratorio L3', 411),
(45, 'UPIICSA Zacatenco', 678),
(12, 'Laboratorio de fisica', 12),
(21, 'UPIICSA Zacatecas', 678),
(16, 'Laboratorio LACE', 23),
(18, 'Laboratorio L4', 411),
(23, 'UPIICSA Hawai', 678),
(04, 'Laboratory C203', 3512),
(51, 'Laboratorio de ciencias', 11),
(11, 'Laboratorio L1', 411),
(42, 'UPIICSA Zacatenco', 678);

-- Insert de la tabla Investigadores
INSERT INTO investigadores VALUES 
(856234, 'Rogelio', 'Lara', 'Escamilla', 'm', 'LAER021215BDKJRFR1', 12, 5),
(421598, 'Osvaldo', 'Contreras', 'Lanuza', 'm', 'COLO980621HCRLDEO3', 11, 11),
(632548, 'Alejandro', 'Martinez', 'Guerra', 'm', 'MAGA325284MLCRNSA2', 20, 23),
(963254, 'Rebeca', 'Romero', 'Perez', 'f', 'ROPR001026MKDFRCR4', 16, 678),
(192845, 'Melissa', 'Duran', 'Trejo', 'f', 'DUTM950318NBFRBKM5', 18, 66),
(542387, 'Sara', 'Lancaster', 'Trujillo', 'f', 'LATS910321NFMRODS2', 15, 3512),
(878932, 'Sofia', 'Delgadilo', 'Villada', 'f', 'DEVS031105NJSDCES3', 11, 11),
(893423, 'Eduardo', 'Martinez', 'Cruz', 'm', 'MACE010903HNOMEDE7', 13, 411),
(752365, 'Rodrigo', 'Mendizabal', 'Cortez', 'm', 'MECR010423WENMSXA2', 13, 411),
(932581, 'Luis', 'Romo', 'Alvarado', 'm', 'ROAL891031MLDRNXL2', 20, 23),
(621521, 'Liliana', 'Diaz', 'Gaona', 'f', 'DIGL011007UNJDVRL2', 12, 5),
(123542, 'Adriana', 'Rodriguez', 'Del Rio', 'f', 'RODA001231PMUNBHA3', 11, 11),
(318526, 'Aldo', 'Guerra', 'Ruiz', 'm', 'GURA010924UHTRCRA1', 16, 678),
(862321, 'Teresa', 'Mendoza', 'Rios', 'f', 'MERT011217IMPLDRT4', 13, 411),
(710265, 'Ariok', 'Juarez', 'Leon', 'm', 'JULA010623PLWEDVA2', 20, 23),
(235121, 'Julio', 'Cortez', 'Villanueva', 'm', 'COVJ011123IMDRFGJ2', 20, 23),
(362154, 'William', 'Thompson', 'Hernandez', 'm', 'THHW850925JMNCRFW3', 15, 3512),
(966664, 'Alexander', 'Orozco', 'Reyes', 'm', 'ORRA011024TYHBCRA1', 18, 66),
(562141, 'Teresa', 'Sanchez', 'Moreno', 'f', 'SAMT890321JNYUGCA1', 16, 303),
(123456, 'Paulina', 'Reyes', 'Sanchez', 'f', 'RESP010331INHTRCP3', 16, 678),
(265326, 'Juan', 'Trejo', 'Jhonson', 'm' , 'TRJJ991028LMNYHJJ8', 15, 3512),
(564842, 'Oscar', 'Cordero', 'Hernandez', 'm', 'COHO651023JMOKDRW3', 13, 411),
(863290, 'Pedro', 'Lopez', 'Castro', 'm', 'LOCP010805EMJRCRL1', 11, 11),
(542112, 'Karla', 'Lara', 'Gaytan', 'f', 'LAGK011111PLMIJNK2', 18, 66),
(514785, 'Alex', 'Parker', 'Esposito', 'm', 'PAEA961030KMILCRA2', 15, 3512),
(523641, 'Alfredo', 'Gomez', 'Torres', 'm', 'GOTA011215IMJYHGA2', 16, 678),
(621522, 'Dulce', 'Garcia', 'Juarez', 'f', 'GAJD011021YUNCRAD1', 12, 5),
(852316, 'Brandon', 'Garcia', 'Flowers', 'm', 'GAFB8711231LMIRDB5', 15 ,3512),
(989403, 'Ixchel', 'Triste', 'Enojada', 'f', 'TREI030511DRGVRCI3', 13, 411);

-- Insert de la tabla Copia
INSERT INTO copia VALUES (03, 862321, NULL),
(12, 523641, NULL),
(25, 123456, NULL),
(65, NUll, 16),
(66, 318526, NULL),
(72, 878932, NULL),
(76, 989403, NULL ),
(77, NULL, 42),
(80, NULL, 04);

-- Insert de la tabla Congreso
INSERT INTO congreso VALUES 
(1,'Congreso Internacional de Salud y Bienestar','20','Paris','2018-09-02','2018-09-03','Internacional','Anual',2500,2),
(2,'Congreso de Divulgacion de la Ciencia','22','Guanajuato','2012-02-15','2012-02-18','Nacional','Trimestral',2800,1),
(3, 'Congreso Nacional de Ciencias del Suelo','37','Zacatecas','2013-08-11','2013-08-12','Nacional','Anual',680,1),
(4, 'Congreso Internacional de Medicina','6','Lima','2021-04-27','2021-04-30','Internacional','Anual',3900,3),
(10, 'Congreso de Karlsruhe','17','Munich','2020-07-02','2020-07-04','Internacional','Semestral',1290,12);

-- Insert de la tabla Revista
insert into revista values 
(45,'Instituto de Investigaciones E.','Amazonas','Sven Dupré',10,'270-280','2010-08-27','2000-01-01','Anual',350,1),
(47,'Ciencias de la Salud','Vertiente','Jesus Silva B',6,'17-18','2006-04-17','2001-01-01','Anual',600,10),
(49,'Cuadernos Americanos','Primera Epoca','Eduardo Valdez',19,'34-38','2019-11-25','2000-01-25','Anual',340,3),
(48,'Revista Digital Universitaria','UNAM','Carrano Morgana',48,'22-28','2012-09-01','2000-01-01','Trimestral',566,4);

-- Insert de la tabla Articulo
INSERT INTO articulo VALUES
(13,'Las tecnologías visuales en movimiento','Tecnología', 'tecvisu@gmail.com', 'Informe Tecnico', 3),
(15,'Complicaciones con el agujero negro', 'Física, agujero negro', NULL , 'Informe Tecnico',12),
(22,'Inteligencia Artificial en Combate','Inteligencia Artificial', NULL ,'Informe Tecnico' ,25),
(33,'Aplicación de la Vacuna en San Luis Potosí','Vacuna,COVID-19', 'vacunacion@sanluis.gov','Informe Tecnico',65),
(25,'Infecciones en Tabasco','COVID-19, infección','covid@tabasco.gov','Informe Tecnico' ,NULL),
(14,'El juego de la enseñanza','Pedagogía' , NULL,'Acta de Congreso', NULL),
(5, 'Una inundación global de plásticos','Global, ecosistema','plasticos@recycle.com','Acta de Congreso',76),
(7,'Ideas y Sensibilidades en Chile del siglo XX','Chile, Historia','sigloxx@chile.com','Acta de Congreso', NULL),
(6,'Utopismo y Juventud','Juventud, sociedad', NULL ,'Acta de Congreso',77),
(9,'Los bacteriófagos','Virus, Bacterias','virusbacteria@yahoo.com','Acta de Congreso', NULL),
(39,'Entrevista a Edgar Medina','Entrevista', NULL ,'Revista',72),
(53,'Prótesis y el deporte competitivo ','Prótesis','protesis@sports.com','Revista', NULL),
(78,'Medición de las creencias de los científicos','Científicos',	'creenciascien@hotmail.com','Revista',80),
(96,'Estudio anatómico comparativo en algunas especies','Anatomía, comparativa',NULL,'Revista',66),
(27,'La controversia Rutherford-Bohr','Historia, átomo',NULL,'Revista', NULL);

-- Insert de la tabla Informe_tecnico
insert into informe_tecnico values
(51,123,'Centro Cacaras','2019-09-23','1200',13),
(53,455,'Centro Buenos Aires','2002-11-03','480',15),
(58,23,'Centro Anahuac MX','2009-07-13','140',22),
(52,45,'Centro Paris','2020-06-20','1300',25),
(55,133,'Centro Valladolid','2001-09-23','902',33);

-- Insert de la tabla Autor
INSERT INTO Autor VALUES (10, 'Sven' , 'Dupre', 'Aguilar', 'DUPS7505281H0', 'duprescritor@harvard.com', 2, 'Doctor', 'Tecnologia', 1, 3512),
(18, 'Joel', 'Hernandez', 'Otañez', 'HEOJ590220TB4', 'joelho@broad.com', '2', 'Doctor', 'Estetica', 5, 1230),
(1200, 'Jose de Jesus', 'Silva', 'Bautista', 'SIBJ581015IT5', 'jjbautista@unam.mx', 2, 'Doctor', 'Religion', 5, 303),
(1400, 'Nallely Venazir', 'Herrera', 'Escobar', 'HEEN770719G5F', 'escovena@gmail.com', '2', 'Doctora', 'Salud y religion', 5, 303),
(1820, 'Axel ', 'Neri', 'Lucero', 'NELA011228PG4', 'neriluceroaxel@aragon.unam.mx', '4', 'Ingeniero', 'Ingenieria', 1, 411),
(1840, 'Alejandro', 'Herrera', 'Villavicencio', 'HEVA011123TG4', 'villalejandro@gmail.com', '2', 'Doctor', 'Nanotecnologia', 1, 92),
(1860, 'Pamela', 'Reyes', 'Cordero', 'RECP010415UJ2', 'parc@iztacala.unam.mx', '1', 'Maestra', 'Salud', 3, 303),
(1880, 'Alfredo', 'Botello', 'Herrera', 'BOHA010430WB3', 'alfredobotella@outlook.com', '4', 'Ingeniero', 'Minerales', 1, 17),
(1920, 'Omar', 'Veltran', 'Virueña', 'VEVO011123IK3', 'omarveltrab@ingenieria.unam.mx', '4', 'Ingeniero', 'Suelo', 1, 11),
(1940, 'Juan', 'Inarritu', 'Lopez', 'INLJ030510ED4', 'inarritu2@iztacala.unam.mx', '2', 'Doctor', 'Salud', 2, 303),
(1960, 'Ryan', 'Reinolds', 'Rubio', 'RERR041123RG4', 'rrrubio@gmail.com', '2', 'Doctor', 'Quimica', 2, 5),
(1980, 'Shakira', 'Ripoll', 'Jimenez', 'RIJS960418EF2', 'shaks@biologia.com', '1', 'Maestra', 'Biologia', 3, 303),
(2000, 'Alfonso', 'Botero', 'Hernandez', 'BOHA990531GV3', 'alfonsobotero@outlook.com', '4', 'Ingeniero', 'Mecanica', 1, 11),
(2020, 'Alejandra', 'Gutierrez', 'Viveros', 'GUVA951215GB1', 'alegvive@aragon.unam.mx', '2', 'Doctora', 'Sociales', 5, 411);

-- Insert de la Tabla Revista_Articulo
insert into revista_articulo values
(NULL, 48, 53),
(NULL, 48, 78),
(NULL, 47, 96),
(NULL, 49, 39),
(NULL, 45, 27);

-- Insert de la tabla Congreso_Articulo
insert into congreso_articulo values
(NULL,3,5),
(NULL,2,9),
(NULL,1,14),
(NULL,4,7),
(NULL,10,6);

-- Insert de la tabla Articulo_Autor
INSERT INTO articulo_autor VALUES (NULL, '10', '13'),
(NULL, '1880', '15'),
(NULL, '1820', '22'),
(NULL, '1860', '33'),
(NULL, '1940', '25'),
(NULL, '2020', '14'),
(NULL, '1920', '5'),
(NULL, '18', '7'),
(NULL, '2020', '6'),
(NULL, '1980', '9'),
(NULL, '2020', '39'),
(NULL, '2000', '53'),
(NULL, '1200', '78'),
(NULL, '1400', '78'),
(NULL, '1980', '96'),
(NULL, '1840', '22'),
(NULL, '1960', '27');