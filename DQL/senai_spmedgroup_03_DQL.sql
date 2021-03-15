
---- SELECTS ----

SELECT * FROM TipoPerfil;

SELECT * FROM Perfis;

SELECT * FROM Especialidades;

SELECT * FROM Pacientes;

SELECT * FROM Medicos;

SELECT * FROM Consultas;

-- Medicos e suas especialidades --
SELECT Medicos.nome AS Medicos, Especialidades.nomeEspecialidade AS Especialidade FROM Medicos
INNER JOIN Especialidades
ON Medicos.idEspecialidade = Especialidades.idEspecialidade;


-- Paciente e sua data de consulta --
SELECT Pacientes.nome AS Paciente, Consultas.dataConsulta FROM Consultas
INNER JOIN Pacientes
ON Pacientes.idPaciente = Consultas.idPaciente;


-- Paciente, sua data de consulta, especialidade e medico --
SELECT Pacientes.nome AS Paciente, Medicos.nome AS Medico, Consultas.dataConsulta, Especialidades.nomeEspecialidade AS Especialidade FROM Pacientes
INNER JOIN Consultas 
ON Pacientes.idPaciente = Consultas.idPaciente
INNER JOIN Medicos
ON Consultas.idMedico = Medicos.idMedico
INNER JOIN Especialidades
ON Medicos.idEspecialidade = Especialidades.idEspecialidade;

