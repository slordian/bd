-----------------------------------------------------------------
-- Inserção de dados na tabela Departamento
-----------------------------------------------------------------
INSERT INTO departamento VALUES (1, 'Recursos Humanos', 'andar: terceiro, bloco: primeiro');
INSERT INTO departamento VALUES (2, 'Administração');
INSERT INTO departamento VALUES (3, 'Primeira Equipe de Entrevista', 'andar: quarto, bloco: primeiro');
INSERT INTO departamento VALUES (4, 'Equipe de Avaliação');
INSERT INTO departamento VALUES (5, 'Tesouraria', 'andar: quinto, bloco: nono');
INSERT INTO departamento VALUES (6, 'Equipe de Contratação');
INSERT INTO departamento VALUES (7, 'Segunda Equipe de Entrevista', 'andar: segundo, bloco: sexto');
INSERT INTO departamento VALUES (8, 'Almoxarifado', 'andar: primeiro, bloco: sétimo');
-----------------------------------------------------------------

-----------------------------------------------------------------
-- Inserção de dados na tabela Projeto
-----------------------------------------------------------------

INSERT INTO projeto VALUES (1, NULL, 100000.00, '2022-12-23', '2024-12-23', 3);
INSERT INTO projeto VALUES (2, 'ENTREVISTADOR DE LENDAS' , 5000000.00, '2020-07-12', NULL, 3);
INSERT INTO projeto VALUES (3, NULL, 50000.00, '2002-05-17', NULL, 7);
INSERT INTO projeto VALUES (4, 'ZELADORES UNIDOS JAMAIS SERAM VARRIDOS', 20000.00, '2019-12-23', NULL, 8);
INSERT INTO projeto VALUES (5, 'TESOURA AFIADA, DINHEIRO NO CAIXA', 1000000.00, '2010-06-12', NULL, 5);
INSERT INTO projeto VALUES (6, NULL, 100000.00, '2022-09-11', NULL, 2);
INSERT INTO projeto VALUES (7, NULL, 10000.00, '2022-11-02', '2022-11-22', 8);
INSERT INTO projeto VALUES (8, 'Recursos humanos', 100000.00, '2020-04-01', NULL, 1);
-----------------------------------------------------------------

-----------------------------------------------------------------
-- Inserção de dados na tabela Candidato
-----------------------------------------------------------------

INSERT INTO candidato VALUES (12345678901, 'Julia da Silva Cruz Medeiros', 'Avaliadora de Candidatos Sênior', NULL, 83999999999, 81956499325);
INSERT INTO candidato VALUES (23456789012, 'André Nunes de França', NULL, 10000.00, 1187563429, NULL);
INSERT INTO candidato VALUES (34567890123, 'Gabriel Fernandes Gouvêa de Sá', 'Zelador', NULL, 1145679123, NULL);
INSERT INTO candidato VALUES (45678901234, 'Jordanna Brandão da Silva', NULL, 1500.00, 36727222, NULL);
INSERT INTO candidato VALUES (56789012345, 'Gérson Davi Sérgio Cordeiro Alencar', 'Contratador', 3000.00, 1189231005, NULL);
INSERT INTO candidato VALUES (67890123456, 'Gabriel Pontes Valeriano', NULL, NULL, 81994529312, 99986550463);
INSERT INTO candidato VALUES (78901234567, 'Maria Eduarda Nascimento Henriques', 'Gestora de Gastos', 55000.00, 83952318096, NULL);
INSERT INTO candidato VALUES (89012345678, 'Arthur Felipe Araújo da Silva', NULL, 31415.92, 1134561234, NULL);
-----------------------------------------------------------------

-----------------------------------------------------------------
-- Inserção de dados na tabela Gratificação
-----------------------------------------------------------------

INSERT INTO "gratificação" VALUES (1, NULL, 50.25);
INSERT INTO "gratificação" VALUES (2, 'Ajudante de Contratação', 250.00);
INSERT INTO "gratificação" VALUES (3, NULL, 1000.00);
INSERT INTO "gratificação" VALUES (4, 'Ajudante de Avaliação', 500.00);
INSERT INTO "gratificação" VALUES (5, 'Hora Extra', 150.00);
INSERT INTO "gratificação" VALUES (6, NULL, 5000.00);
INSERT INTO "gratificação" VALUES (7, NULL, 322.00);
INSERT INTO "gratificação" VALUES (8, 'Entrevistador', 450.00);
-----------------------------------------------------------------

-----------------------------------------------------------------
-- Inserção de dados na tabela Empregado
-----------------------------------------------------------------

INSERT INTO empregado VALUES (556, 'Josivaldo Nunes França', '1990-12-11', 4500.56, 'M', 'PB', 'Rua Dorgival Dantas de Fagundes', 1376, 6);
INSERT INTO empregado VALUES (762, 'Sadraque Juvenildo César', '1978-04-23', 10000.78, NULL, 'PE', 'Rua Dorival Freitas Nunes', NULL, 7);
INSERT INTO empregado VALUES (22, 'Joselito Martinho da Silva', '1974-05-19', 6500.00, 'M', 'SP', 'Rua Adalgisa Gabriela Gomes', 2222, 1);
INSERT INTO empregado VALUES (13, 'Joseildo Sidney da Silva', '1982-09-12', 3200.90, 'M', 'MG', NULL, NULL, 8);
INSERT INTO empregado VALUES (39, 'Rayssa Fagundes de Sá', '2002-02-02', 50000.95, 'F', 'PA', 'Avenida Passos dos Leões', NULL, 2);
INSERT INTO empregado VALUES (45, 'Simone Araújo do Amaral', '1975-05-20', 1500.00, 'F', 'GO', 'Rua Doutora Hermione Granger', 310, 5);
INSERT INTO empregado VALUES (190, 'João Nunes Marcos', '2001-07-23', 1000.67, 'M', 'RO', NULL, NULL, 4);
INSERT INTO empregado VALUES (911, 'Sonia Abravanel Sales de Freitas Nunes Gomes Santana', '1965-03-25', 7850.90, 'F', 'RJ', 'Rua Cefalópodes Antunes', 900, 2);
----------------------------------------------------------------- 

-----------------------------------------------------------------
-- Inserção de dados na tabela Recrutamento-Empregado           
-----------------------------------------------------------------

INSERT INTO recrutamento_empregado VALUES (22, 1, 10, 6); 
INSERT INTO recrutamento_empregado VALUES (556, 5, 200, 1); 
INSERT INTO recrutamento_empregado VALUES (45, 4, 452, 8); 
INSERT INTO recrutamento_empregado VALUES (190, 8, 505, 2); 
INSERT INTO recrutamento_empregado VALUES (911, 7, 23, 8); 
INSERT INTO recrutamento_empregado VALUES (13, 2, 45, 6); 
INSERT INTO recrutamento_empregado VALUES (762, 3, 67, 5); 
INSERT INTO recrutamento_empregado VALUES (190, 2, 78, 8); 
-----------------------------------------------------------------

-----------------------------------------------------------------
-- Inserção de dados na tabela Recrutamento-Candidato           
-----------------------------------------------------------------
INSERT INTO projeto_candidato VALUES (1, 23456789012, '2023-03-12', true);
INSERT INTO projeto_candidato VALUES (8, 89012345678, '2020-10-02', false);
INSERT INTO projeto_candidato VALUES (7, 89012345678, '2022-11-11', true);
INSERT INTO projeto_candidato VALUES (3, 56789012345, '2007-02-27', false);
INSERT INTO projeto_candidato VALUES (4, 12345678901, '2022-02-22', true);
INSERT INTO projeto_candidato VALUES (1, 67890123456, '2023-09-15', false);
INSERT INTO projeto_candidato VALUES (5, 78901234567, '2011-05-18', true);
INSERT INTO projeto_candidato VALUES (7, 56789012345, '2022-11-13', true);
-----------------------------------------------------------------