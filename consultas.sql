

-- Hacer un JOIN DE LAS 4 TABLAS
select *
from empresas inner join lineas on empresas.idempresa = empresas_idempresa
              inner join lineas_ciudades on lineas.idlinea = lineas_idlinea
              inner join ciudades on ciudades_idciudad = ciudades.idciudad;



