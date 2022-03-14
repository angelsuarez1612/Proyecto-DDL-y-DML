##Tabla Empleado

| Empleado     |                          |                           |
|--------------|--------------------------|---------------------------|
| **DNI**      | Cadena de caracteres, 10 |                           |
| Nombre       | Cadena de caracteres, 15 | Iniciales en mayúsculas   |
| Apellidos    | Cadena de caracteres, 20 | Iniciales en mayúsculas   |
| Dirección    | Cadena de caracteres, 30 | Único                     |
| F_nacimiento | Fecha                    | Debe ser mayor de 18 años |
| Teléfono     | Cadena de caracteres, 9  |                           |
| _Sucursal_   | Cadena de caracteres, 5  |                           |

**Añade las siguientes restricciones una vez hayas creado las tablas**
- Desactiva temporalmente la restricción que afecta a la fecha de estreno
- Los teléfonos de actores y socios no se pueden repetir
- Añade una columna a la tabla Actores que sea el salario de cada actor
- El ID de una película debe terminar por una vocal
- Elimina la restricción que afecta a la productora en la tabla película
