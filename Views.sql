CREATE OR REPLACE VIEW fnac as
select concat_ws('-',concat('19',mid(RFC,5,2)),mid(RFC,7,2),mid(RFC,9,2)) fechita, 
concat_ws(' ', nombre, ap_paterno, ap_materno) Nombre_del_Autor
from autor;