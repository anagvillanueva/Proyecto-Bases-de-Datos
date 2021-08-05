-- Insert en la tabla Pais
insert into pais values
('1', 'Mexico','MEX'),
('2', 'Francia','FRA'),
('3', 'Peru', 'PER'),
('4', 'Chile', 'CHL'),
('5', 'Canada', 'CAN'),
('6', 'Australia', 'AUS'),
('7', 'Estados Unidos', 'USA'),
('8', 'Rusia', 'RUS'),
('9', 'Reino Unido', 'GBR'),
('10', 'China', 'CHN'),
('11', 'Ecuador', 'EC'),
('12', 'Alemania', 'DEU'),
('13', 'Italia', 'ITA'),
('14', 'Belgica', 'BEL'),
('15', 'Japon', 'JP');

-- Insert en la tabla Institucion 
INSERT INTO institucion VALUES ('411', 'FES Aragon'), 
('303', 'FES Iztacala'),
('91', 'Bristol University'),
('102', 'FES Cuatitlan'),
('5', 'Facultad de Quimica'),
('11', 'Facultad Ingenieria'),
('17', 'Facultad de ciencias de la tierra'),
('66', 'Instituto de biotecnologia'),
('92', 'centro de nanociencias y nanotecnologia'),
('95', 'CFATA'),
('1066', 'ENES Juriquilla'),
('123', 'ESIME Ticoman'),
('658', 'UANL'),
('345', 'UAEH'),
('254', 'UV'),
('456', 'ESIA Zacatenco'),
('678', 'UPIICSA'),
('23', 'BUAP'),
('523', 'Massachusetts Institute of Technology'),
('485', 'UABC'),
('85', 'UACM'),
('963', 'UAQ'),
('13', 'UACJ'),
('431', 'TESE'),
('3512', 'Harvard University'),
('3258', 'University for Oxford'),
('12', 'Instituto de Fisica'),
('623', 'Instituto de biologia'),
('8000', 'IIMAS'),
('6325', 'Wellcome Trust Sanger Institute'),
('131', 'Instituto Suizo de bioinformatica'),
('4210', 'Instituto Gustave Roussy'),
('1230', 'Instituto Broad'),
('106', 'Laboratorio Europeo de Biologia Molecular'),
('845', 'UCL');

-- Insert en la tabla Areas
INSERT INTO areas VALUES ('1', 'Ingenieria y tecnologia'),
('2', 'Ciencias naturales y exactas'),
('3', 'Ciencias de la salud'),
('4', 'Ciencias sociales y administrativas'),
('5', 'Educacion y humanidades');

-- Insert en la tabla Tema_revista
insert into temas_revista values
('1','Investigacion'),
('2','Tecnico-Profesional'),
('3','Divulgacion'),
('4', 'Cultural'),
('5', 'Multidisciplina'),
('7','Biologia y quimica'),
('8','Biotecnologia'),
('9', 'Matematicas'),
('10', 'Medicina');

-- Insert en la tabla GruposInvestigacion 
INSERT INTO grupos_investigacion VALUES ('11', 'Mateatletas', '1'),
('12', 'Biolocos', '2'),
('13', 'Grupo por naturaleza', '2'),
('15', 'Ingeniebrios', '1'),
('16', 'ICOlogos', '1'),
('18', 'ADP', '2'),
('19', 'Ribonucleicos', '2'),
('20', 'Boinas azules', '1');

-- Insert en la tabla Lab_campus
INSERT INTO lab_campus VALUES ('19', 'Laboratorio L3', '411'),
('45', 'UPIICSA Zacatenco', '678'),
('12', 'Laboratorio de fisica', '12'),
('21', 'UPIICSA Zacatecas', '678'),
('16', 'Laboratorio LACE', '23'),
('18', 'Laboratorio L4', '411'),
('23', 'UPIICSA Hawai', '678'),
('04', 'Laboratory C203', '3512'),
('51', 'Laboratorio de ciencias', '11'),
('11', 'Laboratorio L1', '411'),
('42', 'UPIICSA Zacatenco', '678');

-- Insert en la tabla Investigadores
INSERT INTO investigadores VALUES 
('856234', 'Rogelio', 'Lara', 'Escamilla', 'm', 'LAER021215BDKJRFR1', '12', '5'),
('421598', 'Osvaldo', 'Contreras', 'Lanuza', 'm', 'COLO980621HCRLDEO3', '11', '11'),
('632548', 'Alejandro', 'Martinez', 'Guerra', 'm', 'MAGA325284MLCRNSA2', '20', '23'),
('963254', 'Rebeca', 'Romero', 'Perez', 'f', 'ROPR001026MKDFRCR4', '16', '678'),
('192845', 'Melissa', 'Duran', 'Trejo', 'f', 'DUTM950318NBFRBKM5', '18', '66'),
('542387', 'Sara', 'Lancaster', 'Trujillo', 'f', 'LATS910321NFMRODS2', '15', '3512'),
('878932', 'Sofia', 'Delgadilo', 'Villada', 'f', 'DEVS031105NJSDCES3', '11', '11'),
('893423', 'Eduardo', 'Martinez', 'Cruz', 'm', 'MACE010903HNOMEDE7', '13', '411'),
('752365', 'Rodrigo', 'Mendizabal', 'Cortez', 'm', 'MECR010423WENMSXA2', '13', '411'),
('932581', 'Luis', 'Romo', 'Alvarado', 'm', 'ROAL891031MLDRNXL2', '20', '23'),
('621521', 'Liliana', 'Diaz', 'Gaona', 'f', 'DIGL011007UNJDVRL2', '12', '5'),
('123542', 'Adriana', 'Rodriguez', 'Del Rio', 'f', 'RODA001231PMUNBHA3', '11', '11'),
('318526', 'Aldo', 'Guerra', 'Ruiz', 'm', 'GURA010924UHTRCRA1', '16', '678'),
('862321', 'Teresa', 'Mendoza', 'Rios', 'f', 'MERT011217IMPLDRT4', '13', '411'),
('710265', 'Ariok', 'Juarez', 'Leon', 'm', 'JULA010623PLWEDVA2', '20', '23'),
('235121', 'Julio', 'Cortez', 'Villanueva', 'm', 'COVJ011123IMDRFGJ2', '20', '23'),
('362154', 'William', 'Thompson', 'Hernandez', 'm', 'THHW850925JMNCRFW3', '15', '3512'),
('966664', 'Alexander', 'Orozco', 'Reyes', 'm', 'ORRA011024TYHBCRA1', '18', '66'),
('562141', 'Teresa', 'Sanchez', 'Moreno', 'f', 'SAMT890321JNYUGCA1', '16', '303'),
('123456', 'Paulina', 'Reyes', 'Sanchez', 'f', 'RESP010331INHTRCP3', '16', '678'),
('265326', 'Juan', 'Trejo', 'Jhonson', 'm' , 'TRJJ991028LMNYHJJ8', '15', '3512'),
('564842', 'Oscar', 'Cordero', 'Hernandez', 'm', 'COHO651023JMOKDRW3', '13', '411'),
('863290', 'Pedro', 'Lopez', 'Castro', 'm', 'LOCP010805EMJRCRL1', '11', '11'),
('542112', 'Karla', 'Lara', 'Gaytan', 'f', 'LAGK011111PLMIJNK2', '18', '66'),
('514785', 'Alex', 'Parker', 'Esposito', 'm', 'PAEA961030KMILCRA2', '15', '3512'),
('523641', 'Alfredo', 'Gomez', 'Torres', 'm', 'GOTA011215IMJYHGA2', '16', '678'),
('621522', 'Dulce', 'Garcia', 'Juarez', 'f', 'GAJD011021YUNCRAD1', '12', '5'),
('852316', 'Brandon', 'Garcia', 'Flowers', 'm', 'GAFB8711231LMIRDB5', '15' ,'3512'),
('989403', 'Ixchel', 'Triste', 'Enojada', 'f', 'TREI030511DRGVRCI3', '13', '411');

-- Insert en la tabla Copia
INSERT INTO copia VALUES ('03', '862321', NULL),
('12', '523641', NULL),
('25', '123456', NULL),
('65', NUll, '16'),
('66', '318526', NULL),
('72', '878932', NULL),
('76', '989403', NULL ),
('77', NULL, '42'),
('80', NULL, '04');

-- Insert en la tabla Congreso
INSERT INTO congreso VALUES 
('1','Congreso Internacional de Salud y Bienestar','20','Paris','2018-09-02','2018-09-03','Internacional','Anual','2500','2'),
('2','Congreso de Divulgacion de la Ciencia','22','Guanajuato','2012-02-15','2012-02-18','Nacional','Trimestral','2800','1'),
('3', 'Congreso Nacional de Ciencias del Suelo','37','Zacatecas','2013-08-11','2013-08-12','Nacional','Anual','680','1'),
('4', 'Congreso Internacional de Medicina','6','Lima','2021-04-27','2021-04-30','Internacional','Anual','3900','3'),
('5', 'Congreso de Tecnologia y Negocios ','3','Santiago','2017-06-12','2017-07-12','Internacional','Bianual','1500','4'),
('6', 'Congreso de Minerales ','78','Florencia','2019-11-12','2019-11-14','Internacional','Semestral','7800','13'),
('7', 'Congreso de Doctores - Cardiovascular','5','Yunnan','2009-01-02','2009-01-03','Internacional','Bianual','900','10'),
('8', 'Congreso Nacional de Ingenieria','17','Ciudad de Mexico','2017-05-22','2017-05-25','Nacional','Trimestral','789','1'),
('9', 'Congreso de Nanotecnologia y Ciencias A.','50','Tokio','2019-01-07','2019-01-09','Internacional','Anual','2600','15'),
('10', 'Congreso de Karlsruhe','17','Munich','2020-07-02','2020-07-04','Internacional','Semestral','1290','12');

select * from pais;
select * from institucion;
select * from areas;
select * from temas_revista;
select * from grupos_investigacion;
select * from lab_campus;
select * from investigadores;
select * from copia;
select * from congreso;