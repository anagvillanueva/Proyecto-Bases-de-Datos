-- Lista el curp tal como se ingreso y despues muestra como se veria si se corrigiera el sexo no.1
select Curp, if(left(curp,11) = 'M', 'M', concat_ws('',left(curp,10), 'M', right(Curp,7))) curp_corregido
from Investigadores
Where sexo = 'f' AND Curp not like '____M'
UNION
select Curp, if(left(curp,11) = 'H', 'H', concat_ws('',left(curp,10), 'H', right(Curp,7))) curp_corregido
from Investigadores
Where sexo = 'm' AND Curp not like '____H';

-- Corrige el genero de el sexo femenino dentro del curp
Update Investigadores SET
Curp = if(left(curp,11) = 'M', 'M', concat_ws('',left(curp,10), 'M', right(Curp,7)))
Where sexo = 'f' AND Curp not like '____M';

-- corrige el genero de el sexo masculino dentro del curp
Update Investigadores SET
Curp = if(left(curp,11) = 'H', 'H', concat_ws('',left(curp,10), 'H', right(Curp,7)))
Where sexo = 'm' AND Curp not like '____H';

select patote.*
from (
select re.*, b.idRevistaCientifica idRevista, b.idArticulo
from revista re 
NATURAL LEFT JOIN revista_articulo b
NATURAL LEFT JOIN articulo ac) patote;
/*
Lista los articulos que se publicaron en una revista con el id de revista,
nombre de la revista, id de articulo y el titulo del articulo no.2
*/
select patote.*
from (
select re.idRevistaCientifica, re.NombreRevista, b.idArticulo, ac.titulo Titulo_Articulo
from revista re 
NATURAL LEFT JOIN revista_articulo b
NATURAL LEFT JOIN articulo ac) patote;

-- Lista el costo de los articulos publicados en un revista cientifica no.3
select Titulo, NombreRevista, Costos
from (
select re.*, b.idArticulo, ac.titulo Titulo
from revista re 
NATURAL LEFT JOIN revista_articulo b
NATURAL LEFT JOIN articulo ac) patote
order by costos;

-- Lista todos los investigadores con sexo igual a M no.4
SELECT * FROM investigadores
where NOT Sexo= 'F';
 
-- Lista los investigadores ordenados por el id de Grupos de Investigacion no.5
SELECT Nombre, ap_paterno, ap_materno, Sexo, Curp, idGrupos_Investigacion
FROM investigadores
order by 6 DESC;

-- Lista los investigadores con al menos una A en su nombre no.6
select nombre, locate ('A', nombre) 
from investigadores
where locate ('A', nombre)= 1;

-- Lista las areas que no tienen ningun autor o grupo de investigacion no.7
select ar.idareas, ar.nombre, a.nombre nombre_autor, gi.nombre nombre_grupoIn
from areas ar
LEFT JOIN autor a ON(ar.idareas = a.idareas) 
LEFT JOIN grupos_investigacion gi ON (a.idareas = gi.idareas)
WHERE a.idareas is null AND gi.idareas is null;

-- Lista las revistas que su fecha de publicación sea entre el año 2000 y 2020, y que su frecuencia sea anual no.8
select * from revista 
where fecha_publicacion >= '2000-01-01' AND 
fecha_publicacion <= '2020-12-31'
and frecuencia = 'ANUAL';

-- Remplaza los nombres de los grupos de investigacion que tengan S por el numero 5, vista temporal no.9
select nombre, replace(nombre, 'S', '5') 
from grupos_investigacion;

-- Lista autores que su grado es Doctor no.10
select nombre, grado 
from autor 
where grado = 'DOCTOR';

-- Creamos una tabla temporal sin datos igual a revista no.11
CREATE TEMPORARY TABLE revista2 like revista; 
select * from revista2;

-- Lista los articulos que no tienen un correo de contacto no.12
select * from articulo WHERE Email is null;

-- Lista como se veria si les agregara un correo de contacto a los articulos que no tienen no. 13
select titulo, if(idArticulo = '=<','@aragon.unam.mx', lower(concat_ws('',left(titulo,2), idArticulo, left(Publicacion, 4),'@aragon.unam.mx'))) email
from articulo
where locate('@', email) is null;

-- Lista los institutos en donde no hay un laboratotio o campus, un autor o un investigador no.14
select i.idInstitucion, i.Nombre, a.nombre autor, Lab.nombre lab_campus, inv.nombre investigador 
from Institucion i
LEFT JOIN autor a ON(i.idInstitucion = a.idInstitucion) 
LEFT JOIN Lab_campus lab ON (a.idInstitucion = lab.idInstitucion)
LEFT JOIN Investigadores inv ON (lab.idInstitucion = inv.idInstitucion)
WHERE a.idInstitucion is null AND lab.idInstitucion is null AND inv.idInstitucion is null;

-- Lista la edad de los autores ocupando una view no.15
select 
Nombre_del_Autor,
date_format(from_days(DATEDIFF(now(), fechita)), '%y años %m meses y %d dias') Edad 
from fnac
order by 2 DESC;

-- Lista los informes que tuvieron un costo entre 0 y 1200 no.16
SELECT numero_informe, centro_publicacion, costos
FROM informe_tecnico
WHERE costos>=0 AND costos<=1200
order by costos;

-- Lista las instituciones que contienen la palabra FES no.17
select nombre 
from institucion 
where locate ('FES', nombre)= 1
order by 1;

-- Lista los articulos que escribio cada autor con su titulo y id de articulo no.18
select concat_ws(' ', pato.nombre, pato.ap_paterno, pato.ap_materno) Nombre_del_Autor ,
ac.Titulo, ac.idArticulo
from (
select au.*, 
b.idArticulo, b.idAutor p
from autor au 
LEFT JOIN articulo_autor b
ON au.idAutor=b.idAutor) pato
LEFT JOIN articulo ac
ON pato.idArticulo=ac.idArticulo
order by 1;

 -- Lista los autores que tienen como tema de especilizacion salud no.19
select idAutor, nombre, ap_paterno, ap_materno, tema_esp
from autor 
where tema_esp like 'SALUD';

-- Lista los grupos de investigacion que no tienen ningun investigador no.20
select gi.nombre
from grupos_investigacion gi
LEFT JOIN Investigadores inv ON (gi.idGrupos_Investigacion = inv.idGrupos_Investigacion) 
WHERE inv.idGrupos_Investigacion is null;

-- Lista cuantos Investigadores hay en cada Grupo de Investigación
select  gi.idGrupos_Investigacion Id_Grupo, gi.nombre Nombre_del_Grupo , count(*) Miembros
from Grupos_Investigacion gi
INNER JOIN investigadores inv
ON (gi.idGrupos_Investigacion = inv.idGrupos_Investigacion)
group by gi.nombre, gi.IdGrupos_Investigacion
order by 2;

select * from pais;
select * from institucion;
select * from areas;
select * from temas_revista;
select * from grupos_investigacion;
select * from lab_campus;
select * from investigadores;
select * from copia;
select * from congreso;
select * from revista;
select * from articulo;
select * from informe_tecnico;
select * from autor;
select * from revista_articulo;
select * from congreso_articulo;
select * from articulo_autor;