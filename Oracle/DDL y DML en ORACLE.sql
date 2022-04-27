CREATE TABLE Sucursal
(
    cod_sucursal varchar2(5),
    nombre_sucursal varchar2(15),
    direccion varchar2(40),
    telefono varchar2(9),
    CONSTRAINT CK_COD_SUCURSAL_prim PRIMARY KEY (cod_sucursal),
    CONSTRAINT CK_nombre_sucursal UNIQUE (nombre_sucursal),
    CONSTRAINT CK_direccion_sucursal CHECK (direccion IS NOT NULL)
);

CREATE TABLE Revista
(
    numreg varchar2(10),
    titulo varchar2(25),
    periocidad varchar2(15),
    tipo varchar2(20) DEFAULT 'Desconocido',
    sucursal varchar2(5),
    CONSTRAINT CK_NUMREG_prim PRIMARY KEY (numreg),
    CONSTRAINT CK_FK_sucursal_rev FOREIGN KEY (sucursal) REFERENCES Sucursal(cod_sucursal),
    CONSTRAINT CK_titulo_rev CHECK (titulo = INITCAP(titulo)),
    CONSTRAINT CK_periocidad_rev CHECK (periocidad IN('Semanal','Quincena','Mensual','Trimestral','Anual'))
);

CREATE TABLE Empleado
(
    DNI_Empleado varchar2(10),
    numreg varchar2(10),
    nombre varchar2(15),
    apellidos varchar2(20),
    direccion varchar2(30),
    f_nacimiento date,
    telefono varchar2(9),
    puesto varchar2(35),
    nacionalidad varchar2(20),
    CONSTRAINT CK_DNI_EMP_prim PRIMARY KEY (DNI_Empleado),
    CONSTRAINT CK_FK_numreg_emp FOREIGN KEY (numreg) REFERENCES Revista(numreg),
    CONSTRAINT CK_nombre_emp1 CHECK (nombre = INITCAP(nombre)),
    CONSTRAINT CK_apellidos_emp1 CHECK (apellidos = INITCAP(apellidos)),
    CONSTRAINT CK_fnacimiento_emp CHECK ( (EXTRACT(MONTH FROM f_nacimiento) != '02' AND EXTRACT(MONTH FROM f_nacimiento) != '03' AND EXTRACT(MONTH FROM f_nacimiento) != '04')),
    CONSTRAINT CK_nacionalidad_emp CHECK (nacionalidad = UPPER(nacionalidad))
);

CREATE TABLE NumRevista
(
    ISSN varchar2(9),
    numreg varchar2(10),
    numpag number(4),
    f_publicacion date,
    cantvendidas number(7),
    CONSTRAINT CK_ISSN_prim PRIMARY KEY (ISSN),
    CONSTRAINT CK_FK_numreg_numrev FOREIGN KEY (numreg) REFERENCES Revista(numreg),
    CONSTRAINT CK_numpag_numrev CHECK (numpag > 0),
    CONSTRAINT CK_fpublicacion_numrev CHECK (EXTRACT(YEAR FROM f_publicacion) BETWEEN 2001 AND 2100),
    CONSTRAINT CK_cantvendidas_numrev CHECK (cantvendidas IS NOT NULL)
);

CREATE TABLE Periodista
(
    DNI_Periodista varchar2(10),
    nombre varchar2(15),
    apellidos varchar2(20),
    direccion varchar2(30),
    f_nacimiento date,
    telefono varchar2(9),
    especialista varchar2(25),
    CONSTRAINT CK_DNI_PER_prim PRIMARY KEY (DNI_Periodista),
    CONSTRAINT CK_nombre_peri CHECK (nombre = INITCAP(nombre)),
    CONSTRAINT CK_apellidos_peri CHECK (apellidos = INITCAP(apellidos)),
    CONSTRAINT CK_direccion_peri CHECK (direccion IS NOT NULL),
    CONSTRAINT CK_especialista_peri CHECK (especialista IN('Deportivo','Investigación','Virtual','Cultural y sociocultural'))
);

CREATE TABLE Escribe
(
    ISSN varchar2(10),
    DNI_Periodista varchar2(9),
    titulo varchar2(35),
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
-- 5
ALTER TABLE NumRevista DROP COLUMN f_publicacion;
-- 6
ALTER TABLE NumRevista ADD CONSTRAINT CK_ISSN_numrev CHECK (REGEXP_LIKE(ISSN,'[1-9]{0,3}-[1-9]{0,3}'));
-- 7
ALTER TABLE Periodista ADD CONSTRAINT CK_apellidos_peri2 UNIQUE (apellidos);
-- 8
ALTER TABLE Empleado ADD CONSTRAINT CK_nacimiento_emp CHECK (f_nacimiento IS NOT NULL);
ALTER TABLE Periodista ADD CONSTRAINT CK_nacimiento_per CHECK (f_nacimiento IS NOT NULL);
-- 9
ALTER TABLE Revista ENABLE CONSTRAINT CK_titulo_rev;
-- 10
ALTER TABLE Empleado ADD CONSTRAINT CK_DNI_emp CHECK (REGEXP_LIKE(DNI_Empleado,'[1-9]{0,7}[A-Z]$'));
ALTER TABLE Periodista ADD CONSTRAINT CK_DNI_peri CHECK (REGEXP_LIKE(DNI_Periodista,'[1-9]{0,7}[A-Z]$'));
-- 11
ALTER TABLE Revista ADD CONSTRAINT CK_titulo_rev2 CHECK (length(titulo) > 3);
-- 12
ALTER TABLE Revista ADD CONSTRAINT CK_numreg_rev CHECK (REGEXP_LIKE(numreg,'[1-9]{0,5}'));
-- 13
ALTER TABLE Empleado ADD CONSTRAINT CK_telefono_emp CHECK (REGEXP_LIKE(telefono,'^6'));
ALTER TABLE Periodista ADD CONSTRAINT CK_telefono_per CHECK (REGEXP_LIKE(telefono,'^6'));
