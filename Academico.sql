-- Crear Base de Datos
CREATE DATABASE Academico;
USE Academico;

-- Crear tabla Apoderado
CREATE TABLE Apoderado (
    IdApo INT AUTO_INCREMENT PRIMARY KEY,
    ApeApo VARCHAR(25) NOT NULL,
    NomApo VARCHAR(25) NOT NULL,
    DniApo CHAR(8) NOT NULL,
    TelApo VARCHAR(20) NOT NULL
);

-- Crear tabla Estudiante
CREATE TABLE Estudiante (
    IdEst INT AUTO_INCREMENT PRIMARY KEY,
    ApeEst VARCHAR(30) NOT NULL,
    NomEst VARCHAR(40) NOT NULL,
    DirEst VARCHAR(60) NOT NULL,
    DniEst CHAR(8) NOT NULL,
    FnaEst DATE NOT NULL,
    IdApo INT,
    FOREIGN KEY (IdApo) REFERENCES Apoderado(IdApo)
);

-- Crear tabla Facultad
CREATE TABLE Facultad (
    IdFac INT AUTO_INCREMENT PRIMARY KEY,
    DesFac VARCHAR(60) NOT NULL
);

-- Crear tabla Escuela
CREATE TABLE Escuela (
    IdEsc INT AUTO_INCREMENT PRIMARY KEY,
    DesEsc VARCHAR(60) NOT NULL,
    UbiEsc CHAR(2) NOT NULL,
    IdFac INT,
    FOREIGN KEY (IdFac) REFERENCES Facultad(IdFac)
);

-- Insertar datos en Apoderado
INSERT INTO Apoderado (ApeApo, NomApo, DniApo, TelApo)
VALUES ('Gonzales', 'Carlos', '12345678', '987654321'),
       ('Ramirez', 'Julia', '87654321', '912345678'),
       ('Mendoza', 'Luis', '11223344', '987123456'),
       ('Fernandez', 'Ana', '44332211', '987789012');

-- Insertar datos en Estudiante
INSERT INTO Estudiante (ApeEst, NomEst, DirEst, DniEst, FnaEst, IdApo)
VALUES ('Perez', 'Juan', 'Av. Siempre Viva 123', '23456789', '2000-05-10', 1),
       ('Garcia', 'Maria', 'Calle Falsa 456', '34567890', '1999-10-20', 2),
       ('Lopez', 'Jose', 'Jr. Independencia 789', '45678901', '2001-02-15', 3),
       ('Martinez', 'Lucia', 'Av. Los Olivos 321', '56789012', '2000-07-25', 4);

-- Insertar datos en Facultad
INSERT INTO Facultad (DesFac)
VALUES ('Facultad de Ingeniería'),
       ('Facultad de Ciencias Sociales'),
       ('Facultad de Ciencias de la Salud'),
       ('Facultad de Gestión Empresarial');

-- Insertar datos en Escuela
INSERT INTO Escuela (DesEsc, UbiEsc, IdFac)
VALUES ('Escuela de Ingeniería Civil', 'A1', 1),
       ('Escuela de Psicología', 'B1', 2),
       ('Escuela de Enfermería', 'C1', 3),
       ('Escuela de Administración', 'D1', 4);


DESCRIBE escuela;
