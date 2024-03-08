CREATE DATABASE CONTROL_DIABETES

USE CONTROL_DIABETES

CREATE TABLE Empresa(
Id INT IDENTITY(1,1) PRIMARY KEY,
Nombre VARCHAR(100),
Direccion VARCHAR(100),
Telefono VARCHAR(25)
)

CREATE TABLE Registro_Paciente(
Id_Paciente INT IDENTITY(1,1) PRIMARY KEY,
Nombre VARCHAR (50),
Apellido VARCHAR (50),
Fecha_Nacimiento DATE, --escrito
Fecha_Registro TIMESTAMP, --automatico
Direccion VARCHAR(100),
Telefono1 VARCHAR(15),
Telefono2 VARCHAR(15)
)

CREATE TABLE Registro_Encargado(
Id_Encargado INT IDENTITY(1,1) PRIMARY KEY,
Nombre VARCHAR (50),
Apellido VARCHAR (50),
DPI VARCHAR (25)
)

CREATE TABLE Control_Citas(
Id_Citas INT IDENTITY(1,1) PRIMARY KEY,
Fecha DATE, --ESCRITO
Hora TIME -- se antiende 1:30
)

--APLICACION
CREATE TABLE Medida_Glucosa(
Id_Glucosa INT IDENTITY(1,1) PRIMARY KEY,
Medida VARCHAR(25),
Fecha_Registro DATE
)

--pendiente
CREATE TABLE Examenes(
Id_Examenes INT IDENTITY(1,1) PRIMARY KEY,

)
--pendiente
CREATE TABLE Detalle_Examenes(
Id INT IDENTITY(1,1) PRIMARY KEY,

)

CREATE TABLE Medicamentos_Diabetes (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(100),
	Cantidad int,
	Informacion VARCHAR(1000), -- proceso de creacion
	Hora time,
	Indicaciones VARCHAR(1000),
	Fecha_Vencimiento DATE,
	Estado bit
);

CREATE TABLE Tipos_Diabetes(
Id_Diabetes INT IDENTITY(1,1) PRIMARY KEY,
Nombre VARCHAR(50)
)

--falta agregar empresa y paciente
CREATE TABLE Factura_Cita(
Id_Cita INT IDENTITY(1,1) PRIMARY KEY,
Codigo VARCHAR(50),
Fecha TIMESTAMP, --automatico
)

--RECETA TAMBIEN
CREATE TABLE Detalle_Factura_Cita(
Servicio VARCHAR(500),
Cantidad INT,
Precio DECIMAL(10,2),
Total DECIMAL(10,2)
)

--MEDICAMENTOS
CREATE TABLE Control_medicamento(
Id INT IDENTITY(1,1) PRIMARY KEY,
Sintomas VARCHAR(1000),
Estado BIT
)

--FUERA DE LA CLINICA--











