-- Insert en la tabla Investigadores
INSERT INTO Investigadores VALUES ('856234', 'Rogelio', 'Lara', 'Escamilla', 'm', 'LAER021215BDKJRFR1', '12', '5'),
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
('562141', 'Teresa', 'Sanchez', 'Moreno', 'f', 'SAMT890321JNYUGCA1', '17', '303'),
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

INSERT INTO Institucion VALUES ('411', 'FES Aragon'), 
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
INSERT INTO Areas VALUES ('1', 'Ingenieria y tecnologia'),
('2', 'Ciencias naturales y exactas'),
('3', 'Ciencias de la salud'),
('4', 'Ciencias sociales y administrativas'),
('5', 'Educacion y humanidades');

-- Insert  en la tabla GruposInvestigacion 
INSERT INTO GruposInvestigacion VALUES ('11', 'Mateatletas', '1'),
('12', 'Biolocos', '2'),
('13', 'Grupo por naturaleza', '2'),
('15', 'Ingeniebrios', '1'),
('16', 'ICOlogos', '1'),
('18', 'ADP', '2'),
('19', 'Ribonucleicos', '2'),
('20', 'Boinas azules', '1');
