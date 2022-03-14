### Tabla Empleado

| Empleado     |                          |                           |
|--------------|--------------------------|---------------------------|
| **DNI**      | Cadena de caracteres, 10 |                           |
| Nombre       | Cadena de caracteres, 15 | Iniciales en mayúsculas   |
| Apellidos    | Cadena de caracteres, 20 | Iniciales en mayúsculas   |
| Dirección    | Cadena de caracteres, 30 | Único                     |
| F_nacimiento | Fecha                    | Debe ser mayor de 18 años |
| Teléfono     | Cadena de caracteres, 9  |                           |
| _Sucursal_   | Cadena de caracteres, 5  |                           |

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

### Tabla Escribe
| Escribe              |                          |   |
|----------------------|--------------------------|---|
| **_NumReg_**         | Cadena de caracteres, 10 |   |
| **_DNI_Periodista_** | Cadena de caracteres, 9  |   |

### Tabla Revista
| Revista      |                          |                                                                               |
|--------------|--------------------------|-------------------------------------------------------------------------------|
| **NumReg**   | Cadena de caracteres, 10 |                                                                               |
| Título       | Cadena de caracteres, 10 | Iniciales en mayúsculas                                                       |
| Periodicidad | Cadena de caracteres, 15 | Uno de los siguientes valores: Semanal, quincena, mensual, trimestral o anual |
| Tipo         | Cadena de caracteres, 20 |                                                                               |
| _Sucursal_   | Cadena de caracteres, 5  |                                                                               |

### Tabla NumRevista
| NumRevista       |                          |                      |
|------------------|--------------------------|----------------------|
| **_NumReg_**     | Cadena de caracteres, 10 |                      |
| **ISSN**         | Cadena de caracteres, 9  |                      |
| NumPag           | Numérico, 4              | Debe ser mayor de 0  |
| FechaPublicacion | Fecha                    | En el siglo 21       |
| CantVendidas     | Numérico, 7              | No puede estar vacío |

### Tabla Sucursal
| Sucursal        |                          |                      |
|-----------------|--------------------------|----------------------|
| **Código**      | Cadena de caracteres, 5  |                      |
| Nombre Sucursal | Cadena de caracteres, 15 | Único                |
| Dirección       | Cadena de caracteres, 20 | No puede estar vacío |
| Teléfono        | Cadena de caracteres, 9  |                      |
