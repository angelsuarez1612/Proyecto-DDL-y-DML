### Tabla Director

| DIRECTOR     |                          |                                                    |
|--------------|--------------------------|----------------------------------------------------|
| **DNI**          | Cadena de caracteres, 9  |                                                    |
| Nombre       | Cadena de caracteres, 10 | Único, iniciales en mayúsculas                     |
| Apellidos    | Cadena de caracteres, 20 | Iniciales en mayúsculas                            |
| Nacionalidad | Cadena de caracteres, 12 | Admite: Español, Alemán, Italiano, Francés, Inglés |

### Tabla Película

| Película        |                          |                         |
|-----------------|--------------------------|-------------------------|
| **ID**              | Cadena de caracteres, 3  |                         |
| _fk_DNI_director_ | Cadena de caracteres, 9  |                         |
| Título          | Cadena de caracteres, 15 | Iniciales en mayúsculas |
| Productora      | Cadena de caracteres, 10 | No nulo                 |
| Nacionalidad    | Cadena de caracteres, 12 |                         |
| Fecha_estreno   | Fecha                    | A partir del año 2000   |

### Tabla Ejemplar

| Ejemplar             |                          |                          |
|----------------------|--------------------------|--------------------------|
| **Número**           | Cadena de caracteres, 5  |                          |
| **_fk_ID_pelicula_** | Cadena de caracteres, 3  |                          |
| Estado               | Cadena de caracteres, 10 | Alquilado o no alquilado |

### Tabla Alquila

| Alquila               |                         |         |
|-----------------------|-------------------------|---------|
| **_DNI_socio_**       | Cadea de caracteres, 9  |         |
| **_numero_ejemplar_** | Cadena de caracteres, 5 |         |
| **f_alquiler**        | Fecha                   |         |
| f_devolucion          | Fecha                   | No nulo |

### Tabla Socio

| Socio     |                          |                         |
|-----------|--------------------------|-------------------------|
| **DNI**   | Cadena de caracteres, 9  |                         |
| Nombre    | Cadena de caracteres, 10 | En mayúsculas           |
| Apellidos | Cadena de caracteres, 20 | Iniciales en mayúsculas |
| Dirección | Cadena de caracteres, 30 | No nulo                 |
| Teléfono  | Cadena de caracteres, 9  |                         |

### Tabla Actua

| Actua             |                         |                                        |
|-------------------|-------------------------|----------------------------------------|
| **_ID_pelicula_** | Cadena de caracteres, 3 |                                        |
| **_DNI_actor_**   | Cadena de caracteres, 9 |                                        |
| Prota (sí/no)     | Cadena de caracteres, 5 | Solo admite sí ó no. Por defecto es no |

### Tabla Actores

| Actores      |                          |                         |
|--------------|--------------------------|-------------------------|
| **DNI**      | Cadena de caracteres, 9  |                         |
| Nombre       | Cadena de caracteres, 10 | En mayúsculas           |
| Apellidos    | Cadena de caracteres, 20 | Iniciales en mayúsculos |
| Nacionalidad | Cadena de caracteres, 12 |                         |
| Sexo         | Cadena de caracteres, 5  | Solo admite H ó M       |
| Teléfono     | Cadena de caracteres, 9  | No nulo                 |

**Añade las siguientes restricciones una vez hayas creado las tablas**
- Desactiva temporalmente la restricción que afecta a la fecha de estreno
- Los teléfonos de actores y socios no se pueden repetir
- Añade una columna a la tabla Actores que sea el salario de cada actor
- El ID de una película debe terminar por una vocal
- Elimina la restricción que afecta a la productora en la tabla película
