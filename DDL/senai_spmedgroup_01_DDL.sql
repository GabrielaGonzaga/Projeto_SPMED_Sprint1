
CREATE DATABASE SPMED;

USE SPMED;

GO

CREATE TABLE  TipoPerfil
(
	idTipoPerfil		INT PRIMARY KEY IDENTITY
	,tituloTipoPerfil	VARCHAR(200) UNIQUE NOT NULL
);


CREATE TABLE Perfis
(
	idPerfil			INT PRIMARY KEY IDENTITY
	,idTipoPerfil		INT FOREIGN KEY REFERENCES TipoPerfil (idTipoPerfil)
	,nomePerfil			VARCHAR(200) NOT NULL
	,email				VARCHAR(200) UNIQUE NOT NULL
	,senha				VARCHAR(200) NOT NULL
);

CREATE TABLE  Pacientes
(
	idPaciente			INT PRIMARY KEY IDENTITY
	,idTipoPerfil		INT FOREIGN KEY REFERENCES TipoPerfil (idTipoPerfil)
	,nome				VARCHAR(200)		NOT NULL
	,RG					VARCHAR(12)	 UNIQUE	NOT NULL
	,CPF				VARCHAR(14)  UNIQUE	NOT NULL
	,endere�o			VARCHAR(200)		NOT NULL
	,dataNascimento		SMALLDATETIME		NOT NULL
	,telefone			VARCHAR(18)	 UNIQUE NOT NULL
);

CREATE TABLE  Especialidades
(
	idEspecialidade		INT PRIMARY KEY IDENTITY
	,nomeEspecialidade	VARCHAR(200) NOT NULL
);

CREATE TABLE  Medicos
(
	idMedico			INT PRIMARY KEY IDENTITY
	,idEspecialidade	INT FOREIGN KEY REFERENCES Especialidades (idEspecialidade)
	,nome				VARCHAR(200) NOT NULL
);

ALTER TABLE Medicos
ADD idTipoPerfil		INT FOREIGN KEY REFERENCES TipoPerfil (idTipoPerfil);


CREATE TABLE  Consultas
(
	idConsulta			INT PRIMARY KEY IDENTITY
	,idPaciente			INT FOREIGN KEY REFERENCES Pacientes  (idPaciente)
	,idMedico			INT FOREIGN KEY REFERENCES Medicos    (idMedico)
	,dataConsulta		SMALLDATETIME NOT NULL
);
