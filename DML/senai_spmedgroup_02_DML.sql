
USE SPMED;

GO

---- Inserts ----

-- Tipos de Perfis --
INSERT INTO TipoPerfil (tituloTipoPerfil)
VALUES					('Administrador')
						,('M�dico')
						,('Paciente');

-- Perfil Teste --
INSERT INTO Perfis (idTipoPerfil, nomePerfil, email, senha)
VALUES				(1, 'Fernando Strada', 'fernandostrada@teste.com', 'senhateste123');


-- Especialidades --
INSERT INTO Especialidades (nomeEspecialidade)
VALUES						('Acupuntura')
							,('Anestesiologia')
							,('Angiologia')
							,('Cardiologia')
							,('Cirurgia Cardiovascular')
							,('Cirurgia da M�o')
							,('Cirurgia do Aparelho Digestivo')
							,('Cirurgia Geral')
							,('Cirurgia Pedi�trica')
							,('Cirurgia Pl�stica')
							,('Cirurgia Tor�cica')
							,('Cirurgia Vascular')
							,('Dermatologia')
							,('Radioterapia')
							,('Urologia')
							,('Pediatria')
							,('Psiquiatria');

-- Paciente Teste --
INSERT INTO Pacientes (idTipoPerfil, nome, RG, CPF, endere�o, dataNascimento, telefone)
VALUES					(3, 'Teste', '00.000.000-0', '000.000.000.00', 'Rua Teste N�1', '01/01/2000', '55 (00)000000000');


-- M�dico Teste --
INSERT INTO Medicos (idEspecialidade, nome, idTipoPerfil)
VALUES				(16, 'Vera Goulveia', 2);


--Consulta Teste --
INSERT INTO Consultas (idPaciente, idMedico, dataConsulta)
VALUES				   (6, 1, GETDATE());


---- Fim Inserts ----