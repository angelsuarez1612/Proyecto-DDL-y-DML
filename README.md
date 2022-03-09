<h3>Tabla Director</h3>

| DIRECTOR     |                          |                                                    |
|--------------|--------------------------|----------------------------------------------------|
| **DNI**          | Cadena de caracteres, 9  |                                                    |
| Nombre       | Cadena de caracteres, 10 | Único, iniciales en mayúsculas                     |
| Apellidos    | Cadena de caracteres, 20 | Iniciales en mayúsculas                            |
| Nacionalidad | Cadena de caracteres, 12 | Admite: Español, Alemán, Italiano, Francés, Inglés |

<h3>Tabla Película</h3>

| Película        |                          |                         |
|-----------------|--------------------------|-------------------------|
| **ID**              | Cadena de caracteres, 3  |                         |
| _fk_DNI_director_ | Cadena de caracteres, 9  |                         |
| Título          | Cadena de caracteres, 15 | Iniciales en mayúsculas |
| Productora      | Cadena de caracteres, 10 | No nulo                 |
| Nacionalidad    | Cadena de caracteres, 12 |                         |
| Fecha_estreno   | Fecha                    | A partir del año 2000   |

<h3>Tabla Ejemplar</h3>

| Ejemplar             |                          |                          |
|----------------------|--------------------------|--------------------------|
| **Número**           | Cadena de caracteres, 5  |                          |
| **_fk_ID_pelicula_** | Cadena de caracteres, 3  |                          |
| Estado               | Cadena de caracteres, 10 | Alquilado o no alquilado |

<h3>Tabla Alquila</h3>

| Alquila               |                         |         |
|-----------------------|-------------------------|---------|
| **_DNI_socio_**       | Cadea de caracteres, 9  |         |
| **_numero_ejemplar_** | Cadena de caracteres, 5 |         |
| **f_alquiler**        | Fecha                   |         |
| f_devolucion          | Fecha                   | No nulo |

<h3>Tabla Socio</h3>

| Socio     |                          |                         |
|-----------|--------------------------|-------------------------|
| **DNI**   | Cadena de caracteres, 9  |                         |
| Nombre    | Cadena de caracteres, 10 | En mayúsculas           |
| Apellidos | Cadena de caracteres, 20 | Iniciales en mayúsculas |
| Dirección | Cadena de caracteres, 30 | No nulo                 |
| Teléfono  | Cadena de caracteres, 9  |                         |

<h3>Tabla Actua</h3>

| Actua             |                         |                                        |
|-------------------|-------------------------|----------------------------------------|
| **_ID_pelicula_** | Cadena de caracteres, 3 |                                        |
| **_DNI_actor_**   | Cadena de caracteres, 9 |                                        |
| Prota (sí/no)     | Cadena de caracteres, 5 | Solo admite sí ó no. Por defecto es no |

<h3>Tabla Actores</h3>

| Actores      |                          |                         |
|--------------|--------------------------|-------------------------|
| **DNI**      | Cadena de caracteres, 9  |                         |
| Nombre       | Cadena de caracteres, 10 | En mayúsculas           |
| Apellidos    | Cadena de caracteres, 20 | Iniciales en mayúsculos |
| Nacionalidad | Cadena de caracteres, 12 |                         |
| Sexo         | Cadena de caracteres, 5  | Solo admite H ó M       |
| Teléfono     | Cadena de caracteres, 9  | No nulo                 |
