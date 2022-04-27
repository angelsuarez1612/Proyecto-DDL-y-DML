CREATE TABLE Sucursal
(
    cod_sucursal varchar(5),
    nombre_sucursal varchar(15),
    direccion varchar(40),
    telefono varchar(9),
    CONSTRAINT CK_COD_SUCURSAL_prim PRIMARY KEY (cod_sucursal),
    CONSTRAINT CK_nombre_sucursal UNIQUE (nombre_sucursal),
    CONSTRAINT CK_direccion_sucursal CHECK (direccion IS NOT NULL)
);

CREATE TABLE Revista
(
    numreg varchar(10),
    titulo varchar(25),
    periocidad varchar(15),
    tipo varchar(20) DEFAULT 'Desconocido',
    sucursal varchar(5),
    CONSTRAINT CK_NUMREG_prim PRIMARY KEY (numreg),
    CONSTRAINT CK_FK_sucursal_rev FOREIGN KEY (sucursal) REFERENCES Sucursal(cod_sucursal),
    CONSTRAINT CK_titulo_rev CHECK (titulo REGEXP BINARY ('^[A-Z]')),
    CONSTRAINT CK_periocidad_rev CHECK (periocidad IN('Semanal','Quincena','Mensual','Trimestral','Anual'))
);

CREATE TABLE Empleado
(
    DNI_Empleado varchar(10),
    numreg varchar(10),
    nombre varchar(15),
    apellidos varchar(20),
    direccion varchar(30),
    f_nacimiento date,
    telefono varchar(9),
    puesto varchar(15),
    nacionalidad varchar(10),
    CONSTRAINT CK_DNI_EMP_prim PRIMARY KEY (DNI_Empleado),
    CONSTRAINT CK_FK_numreg_emp FOREIGN KEY (numreg) REFERENCES Revista(numreg),
    CONSTRAINT CK_nombre_emp1 CHECK (nombre REGEXP BINARY ('^[A-Z]')),
    CONSTRAINT CK_apellidos_emp1 CHECK (apellidos REGEXP BINARY ('^[A-Z]')),
    CONSTRAINT CK_fnacimiento_emp CHECK (MONTH(f_nacimiento) != '02' AND MONTH(f_nacimiento) != '03' AND MONTH(f_nacimiento) != '04'),
    CONSTRAINT CK_nacionalidad_emp CHECK (nacionalidad REGEXP BINARY ('[A-Z]'))
);

CREATE TABLE NumRevista
(
    ISSN varchar(9),
    numreg varchar(10),
    numpag int(4),
    f_publicacion date,
    cantvendidas int(7),
    CONSTRAINT CK_ISSN_prim PRIMARY KEY (ISSN),
    CONSTRAINT CK_FK_numreg_numrev FOREIGN KEY (numreg) REFERENCES Revista(numreg),
    CONSTRAINT CK_numpag_numrev CHECK (numpag > 0),
    CONSTRAINT CK_fpublicacion_numrev CHECK (YEAR(f_publicacion) BETWEEN 2001 AND 2100),
    CONSTRAINT CK_cantvendidas_numrev CHECK (cantvendidas IS NOT NULL)
);

CREATE TABLE Periodista
(
    DNI_Periodista varchar(10),
    nombre varchar(15),
    apellidos varchar(20),
    direccion varchar(30),
    f_nacimiento date,
    telefono varchar(9),
    especialista varchar(25),
    CONSTRAINT CK_DNI_PER_prim PRIMARY KEY (DNI_Periodista),
    CONSTRAINT CK_nombre_peri CHECK (nombre REGEXP BINARY ('^[A-Z]')),
    CONSTRAINT CK_apellidos_peri CHECK (apellidos REGEXP BINARY ('^[A-Z]')),
    CONSTRAINT CK_direccion_peri CHECK (direccion IS NOT NULL),
    CONSTRAINT CK_especialista_peri CHECK (especialista IN('Deportivo','Investigación','Virtual','Cultural y sociocultural'))
);

CREATE TABLE Escribe
(
    ISSN varchar(10),
    DNI_Periodista varchar(9),
    titulo varchar(35),
    CONSTRAINT CK_prim_numrevista PRIMARY KEY (ISSN,DNI_Periodista),
    CONSTRAINT CK_FK_ISSN_esc FOREIGN KEY (ISSN) REFERENCES NumRevista(ISSN),
    CONSTRAINT CK_DNIperiodista_esc FOREIGN KEY (DNI_Periodista) REFERENCES Periodista(DNI_Periodista)
);

-- Añade las siguientes restricciones una vez hayas creado las tablas
-- 1
ALTER TABLE Revista DISABLE CONSTRAINT CK_titulo_rev;
-- 2
ALTER TABLE Sucursal DROP CONSTRAINT CK_direccion_sucursal;
-- 3
ALTER TABLE Sucursal ADD f_fundacion date;
-- 4
ALTER TABLE NumRevista DROP f_publicacion;
-- 5
ALTER TABLE NumRevista ADD CONSTRAINT CK_ISSN_numrev CHECK (ISSN REGEXP BINARY ('[1-9]{0,3}-[1-9]{0,3}'));
-- 6
ALTER TABLE Periodista ADD CONSTRAINT CK_apellidos_peri2 UNIQUE (apellidos);
-- 7
ALTER TABLE Empleado ADD CONSTRAINT CK_nacimiento_emp CHECK (f_nacimiento IS NOT NULL);
ALTER TABLE Periodista ADD CONSTRAINT CK_nacimiento_per CHECK (f_nacimiento IS NOT NULL);
-- 8
ALTER TABLE Revista ENABLE CONSTRAINT CK_titulo_rev;
-- 9
ALTER TABLE Empleado ADD CONSTRAINT CK_DNI_emp CHECK (DNI_Empleado REGEXP BINARY ('[1-9]{0,7}[A-Z]$'));
ALTER TABLE Periodista ADD CONSTRAINT CK_DNI_peri CHECK (DNI_Periodista REGEXP BINARY ('[1-9]{0,7}[A-Z]$'));
-- 10
ALTER TABLE Revista ADD CONSTRAINT CK_titulo_rev2 CHECK (length(titulo) > 3);
-- 11
ALTER TABLE Revista ADD CONSTRAINT CK_numreg_rev CHECK (numreg REGEXP BINARY ('[1-9]{0,5}'));
-- 12
ALTER TABLE Empleado ADD CONSTRAINT CK_telefono_emp CHECK (telefono REGEXP BINARY ('^6'));
ALTER TABLE Periodista ADD CONSTRAINT CK_telefono_per CHECK (telefono REGEXP BINARY ('^6'));
