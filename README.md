El proyecto va sobre revistas, ejemplares de revistas, periodistas...
Cada revista tiene su propia sucursal y para cada revista trabajan empleados (que no son periodistas). Las revistas van sacando ediciones ó en este caso Numero de revista (NumRevista) y cada edición es escrita por uno o varios periodistas. Los periodistas pueden escribir en una o en varias ediciones de revista

### Tabla Empleado

| Empleado     |                          |                           |
|--------------|--------------------------|---------------------------|
| **DNI**      | Cadena de caracteres, 10 |                           |
| _NumReg_   | Cadena de caracteres, 10  |                           |
| Nombre       | Cadena de caracteres, 15 | Iniciales en mayúsculas   |
| Apellidos    | Cadena de caracteres, 20 | Iniciales en mayúsculas   |
| Dirección    | Cadena de caracteres, 30 |                      |
| F_nacimiento | Fecha                    | Debe ser mayor de 18 años y no puede cumplir años en febrero, marzo o abril |
| Teléfono     | Cadena de caracteres, 9  |                           |
| Puesto    | Cadena de caracteres, 15 |    |
| Nacionalidad     | Cadena de caracteres, 10  | Todo en mayúsculas                           |

### Tabla Revista
| Revista      |                          |                                                                               |
|--------------|--------------------------|-------------------------------------------------------------------------------|
| **NumReg**   | Cadena de caracteres, 10 |                                                                               |
| Título       | Cadena de caracteres, 10 | Iniciales en mayúsculas                                                       |
| Periodicidad | Cadena de caracteres, 15 | Uno de los siguientes valores: Semanal, quincena, mensual, trimestral o anual |
| Tipo         | Cadena de caracteres, 20 | Por defecto es 'Desconocido'                                                                              |
| _Sucursal_   | Cadena de caracteres, 5  |                                                                               |

### Tabla Sucursal
| Sucursal        |                          |                      |
|-----------------|--------------------------|----------------------|
| **Código**      | Cadena de caracteres, 5  |                      |
| Nombre Sucursal | Cadena de caracteres, 15 | Único                |
| Dirección       | Cadena de caracteres, 20 | No puede estar vacío |
| Teléfono        | Cadena de caracteres, 9  |                      |

### Tabla NumRevista
| NumRevista       |                          |                      |
|------------------|--------------------------|----------------------|
| **ISSN**         | Cadena de caracteres, 9  |                      |
| _NumReg_     | Cadena de caracteres, 10 |                      |
| NumPag           | Numérico, 4              | Debe ser mayor de 0  |
| FechaPublicacion | Fecha                    | En el siglo 21       |
| CantVendidas     | Numérico, 7              | No puede estar vacío |

### Tabla Escribe
| Escribe              |                          |   |
|----------------------|--------------------------|---|
| **_ISSN_**         | Cadena de caracteres, 10 |   |
| **_DNI_Periodista_** | Cadena de caracteres, 9  |   |
| Título | Cadena de caracteres, 15  |   |

### Tabla Periodista
| Periodista   |                          |                                                                  |
|--------------|--------------------------|------------------------------------------------------------------|
| **DNI**      | Cadena de caracteres, 10 |                                                                  |
| Nombre       | Cadena de caracteres, 15 | Iniciales en mayúsculas                                          |
| Apellidos    | Cadena de caracteres, 20 | Iniciales en mayúsculas                                          |
| Dirección    | Cadena de caracteres, 30 | No puede estar vacío                                             |
| F_nacimiento | Fecha                    |                                                                  |
| Teléfono     | Cadena de caracteres, 9  |                                                                  |
| Especialista | Cadena de caracteres, 25 | Es: Deportivo, investigación, virtual o cultural y sociocultural |


### Añade las siguientes restricciones una vez hayas creado las tablas:
- Desactiva temporalmente la restricción que afecta a los títulos de las revistas
- Elimina la restricción que afecta a la dirección de cada sucursal
- Añade una nueva columna a la tabla sucursal en la que se guardará la fecha de fundación de cada sucursal
- Elimina la columna FechaPublicacion de la tabla NumRevista
- Añade una restricción sobre los ISSN de la tabla NumRevista de manera que los datos introducidos sigan el siguiente formato: 4 números, un guión, 4 números
- Los apellidos de los periodistas no se pueden repetir
- La fecha de nacimiento de los empleados y periodistas no pueden estar en blanco
- Activa nuevamente la restricción que desactivamos referente a los títulos de las revistas
- El DNI de los empleados y de los periodistas está compuesto por 8 números y termina por una letra mayúscula
- El título de la revista no puede tener menos de 4 caracteres
- El identificador de las revistas son 6 números y ninguna letra o símbolo
- Los teléfonos de los empleados y los periodistas son teléfonos móviles, no fijos

### Consultas
*En todas estas consultas tienes que emplear funciones: aritméticas, de cadenas, 
de fechas y de conversión, distinct, alias de columnas y tablas  y ordenaciones*
----------------------
### Consultas sencillas
- Muestra los nombres de los periodistas junto con su especialidad
- Muestra las ediciones de revistas cuyo número de cantidades vendidas sea mayor de 1000

### Vistas
- Crea una vista con las revistas que tengan más de una edición en el año 2021 junto con el número de ediciones que tienen en ese año

### Subconsultas
- Lista todos los empleados junto con el nombre de la sucursal para la que trabajan (ordena alfabéticamente)
- Muestra el nombre de las revistas que ha escrito la periodista Fabiola Galindo Real

### Combinaciones de tablas
- Muestra el nombre de los empleados junto con el nombre de la revista para la que trabajan

### Inserción de registros. Consultas de datos anexados
- Inserta un nuevo periodista con DNI 83655525L, llamado Luis Reyes Sánchez, su dirección es Camino Víctor, 30, 13º A; Nació el 9 de enero del 93, su número de teléfono es 635245777  y su especialidad es la misma que la de Fidel Rubio Pereira
- Crea una nueva revista que tenga como NumReg 'REV-6', nombre Farandulería y sucursal 6, el resto de datos serán los mismos que en la revista Enigmas

### Modificación de registros. Consultas de actualización
- Actualiza la revista para la que trabajan los empleados cuya nacionalidad sea española, de forma que pasen a trabajar automáticamente a 'REV-2'

### Borrado de registros. Consultas de eliminación.
- Elimina las ediciones de revistas que no han sido publicadas entre el año 2021 y 2022

### Group by y having.
- Muestra el nombre y año de nacimiento (solo el año) del periodista que haya escrito el mayor número de ediciones de revista
- Calcula por cada revista la media de páginas que tienen las ediciones de sus revistas

### Outer joins. Combinaciones externas.
- Muestra el número de ediciones de revista que pertenecen a una revista (incluyendo aquellas que no tienen ediciones) junto el nombre de la revista ordenadas según el número de cantidades vendidas total de mayor a menor
- Mostrar todas las sucursales junto su número de empleados incluyendo aquellas que no tienen empleados

### Consultas con operadores de conjuntos.
- Muestra las revistas que son de caracter científico y que tienen más de un año desde su fecha de publicación
- Muestra el periodista especializado en cultural y sociocultural que más ediciones de revista ha escrito

### Subconsultas correlacionadas.
- Muestra la edición de revista que más unidades ha vendido de cada revista
