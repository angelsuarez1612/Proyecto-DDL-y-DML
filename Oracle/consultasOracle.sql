--CONSULTAS SENCILLAS
-- Muestra los nombres de los periodistas junto con su especialidad
SELECT nombre || ' ' || apellidos as "NombreCompleto",especialista as "Especialidad" FROM Periodista;

-- Muestra las ediciones de revistas cuyo número de cantidades vendidas sea mayor de 1000
SELECT issn FROM NumRevista WHERE cantvendidas >= 1000;

--VISTAS
-- Crea una vista con las revistas que tengan más de una edición junto con el número de ediciones que tienen
CREATE VIEW ejercicio3 as
SELECT titulo,count(*) as "NumEdiciones" 
FROM revista r,numrevista n WHERE r.numreg = n.numreg 
GROUP BY titulo HAVING count(*) > 1;

--SUBCONSULTAS
-- Listar el DNI y el nombre completo de los empleados que sean más jovenes que Jose Silva Bendito
SELECT dni_empleado as "DNI",nombre ||' '||apellidos as "Empleado" 
FROM empleado 
WHERE f_nacimiento > 
                    (SELECT f_nacimiento FROM empleado 
                    WHERE nombre = 'Jose' AND apellidos = 'Silva Bendito');

-- Muestra el ISSN de las revistas que ha escrito la periodista Fabiola Galindo Real
SELECT titulo FROM Escribe 
WHERE dni_periodista = (SELECT dni_periodista 
                        FROM Periodista WHERE nombre = 'Fabiola' 
                        AND apellidos = 'Galindo Real');

--COMBINACIONES DE TABLAS
-- Lista todos los empleados junto con el nombre de la sucursal para la que trabajan (ordena alfabéticamente)
SELECT nombre ||' '|| apellidos as "NombreCompleto",nombre_sucursal
FROM empleado e,sucursal s,revista r 
WHERE e.numreg = r.numreg AND r.sucursal = s.cod_sucursal 
ORDER BY "NombreCompleto";

-- INSERCIÓN DE REGISTROS
-- Inserta un nuevo periodista con DNI 83655525L, llamado Luis Reyes Sánchez, su dirección es Camino Víctor, 30, 13º A; Nació el 9 de enero del 93, su número de teléfono es 635245777  y su especialidad es la misma que la de Fidel Rubio Pereira
INSERT INTO periodista 
SELECT '83655525L','Luis','Reyes Sanchez','Camino Víctor, 30,13º A',
'9-1-1993','635245777',especialista 
FROM periodista WHERE nombre = 'Fidel' AND apellidos = 'Rubio Pereira';

-- Crea una nueva revista que tenga como NumReg 'REV-6', nombre Farandulería y sucursal 6, el resto de datos serán los mismos que en la revista Enigmas
INSERT INTO revista SELECT 'REV-6','Faranduleria',periocidad,tipo,'6' 
FROM revista WHERE titulo = 'Enigmas';

-- MODIFICACIÓN DE REGISTROS
-- Actualiza la revista para la que trabajan los empleados cuya nacionalidad sea española, de forma que pasen a trabajar automáticamente a 'REV-2'
UPDATE empleado SET numreg = 'REV-2'
WHERE nacionalidad = 'ESPAÑOL' OR nacionalidad = 'ESPAÑOLA';

-- BORRADO DE REGISTROS
-- Elimina de la tabla numrevista la edición de revista que menos cantidad ha vendido, recuerda que esa edición se encuentra también en la tabla escribe, por lo tanto debes eliminar el registro también de esa tabla
DELETE FROM escribe WHERE ISSN = (SELECT ISSN FROM numrevista WHERE cantvendidas = (SELECT min(cantvendidas) FROM numrevista));
DELETE FROM numrevista WHERE cantvendidas = (SELECT min(cantvendidas) FROM numrevista);

-- GROUP BY Y HAVING
-- Muestra el nombre y año de nacimiento (solo el año) del periodista que haya escrito el mayor número de ediciones de revista (en caso de haber dos o más que hayan escrito el mismo número de ediciones, deben aparecer todos)
SELECT nombre ||' '|| apellidos as "NombreCompleto",
EXTRACT(YEAR FROM f_nacimiento) as "Año de nacimiento"
FROM periodista WHERE dni_periodista IN 
                                    (SELECT dni_periodista 
                                    FROM Escribe GROUP BY dni_periodista 
                                    HAVING count(dni_periodista) = (SELECT max(count(dni_periodista)) 
                                                                    FROM Escribe GROUP BY dni_periodista));
                                
-- Muestra todos los periodistas menores de 28 años que han escrito menos de 2 ediciones de revistas
select * FROM periodista WHERE months_between(sysdate,f_nacimiento) < 336 
and dni_periodista IN 
                   (SELECT dni_periodista 
                    FROM escribe 
                    GROUP BY dni_periodista HAVING count(dni_periodista) < 2);

-- Muestra las revistas cuyas ediciones tienen una media de páginas mayor de 99 junto con el número de ediciones de cada una
SELECT titulo as "Revista",avg(numpag) as "Media de págs",count(*) as "Num. Ediciones" FROM revista r, numrevista n 
WHERE r.numreg = n.numreg GROUP BY titulo HAVING avg(numpag) > 99;

-- OUTER JOINS
-- Muestra el número de ediciones de revista que pertenecen a una revista (incluyendo aquellas que no tienen ediciones) junto el nombre de la revista y el número total de cantidades vendidas ordenadas según el número de ediciones de mayor a menor
SELECT titulo as "Revista",count(n.numreg) as "Num Ediciones",sum(cantvendidas) as "Cantidades Vendidas" 
FROM revista r left join numrevista n ON r.numreg = n.numreg 
GROUP BY r.titulo ORDER BY count(n.numreg) desc;

-- Mostrar todas las sucursales junto su número de empleados incluyendo aquellas que no tienen empleados
SELECT nombre_sucursal as "Sucursal",count(e.numreg) as "Número de Empleados"
FROM revista r left join empleado e ON e.numreg = r.numreg, sucursal s
WHERE sucursal = cod_sucursal GROUP BY nombre_sucursal ORDER BY count(e.numreg) desc;

-- CONSULTAS CON OPERADORES DE CONJUNTOS
-- Muestra el ISSN de las ediciones de revistas de las que se han vendido más de 1000 ediciones y el título de las revistas que son científicas
SELECT ISSN as "TIT" FROM numrevista WHERE cantvendidas > 1000
UNION
SELECT titulo FROM revista WHERE tipo = 'Científica';

-- Haz una consulta con operadores de conjuntos que muestre los periodistas que no han escrito ninguna edición de revista
SELECT dni_periodista FROM periodista
MINUS
SELECT dni_periodista FROM escribe;

-- SUBCONSULTAS CORRELACIONADAS
-- Muestra la edición de revista que más unidades ha vendido de cada revista
SELECT titulo as "Revista",ISSN as "Más Vendida"
FROM revista r, numrevista n 
WHERE n.cantvendidas = 
                    (SELECT max(cantvendidas) 
                    FROM numrevista
                    WHERE numreg = r.numreg);
