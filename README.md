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
| F_nacimiento | Fecha                    | Debe ser mayor de 18 años |
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
