-- Inserção de dados na tabela Departamento
INSERT INTO departamento VALUES (1, 'Recursos Humanos', 'andar: terceiro, bloco: primeiro');
INSERT INTO departamento VALUES (2, 'Administração');
INSERT INTO departamento VALUES (3, 'Primeira Equipe de Entrevista', 'andar: quarto, bloco: primeiro');
INSERT INTO departamento VALUES (4, 'Equipe de Avaliação');
INSERT INTO departamento VALUES (5, 'Tesouraria', 'andar: quinto, bloco: nono');
INSERT INTO departamento VALUES (6, 'Equipe de Contratação');
INSERT INTO departamento VALUES (7, 'Segunda Equipe de Entrevista', 'andar: segundo, bloco: sexto');
INSERT INTO departamento VALUES (8, 'Almoxarifado', 'andar: primeiro, bloco: sétimo');

-- Inserção de dados na tabela Candidato
INSERT INTO candidato VALUES (12345678901, 'Julia da Silva Cruz Medeiros', 'Avaliadora de Candidatos Sênior', NULL, 83999999999, 81956499325);
INSERT INTO candidato VALUES (23456789012, 'André Nunes de França', NULL, 10000.00, 1187563429, NULL);
INSERT INTO candidato VALUES (34567890123, 'Gabriel Fernandes Gouvêa de Sá', 'Zelador', NULL, 1145679123, NULL);
INSERT INTO candidato VALUES (45678901234, 'Jordanna Brandão da Silva', NULL, 1500.00, 36727222, NULL);
INSERT INTO candidato VALUES (56789012345, 'Gérson Davi Sérgio Cordeiro Alencar', 'Contratador', 3000.00, 1189231005, NULL);
INSERT INTO candidato VALUES (67890123456, 'Gabriel Pontes Valeriano', NULL, NULL, 81994529312, 99986550463);
INSERT INTO candidato VALUES (78901234567, 'Maria Eduarda Nascimento Henriques', 'Gestora de Gastos', 55000.00, 83952318096, NULL);
INSERT INTO candidato VALUES (89012345678, 'Arthur Felipe Araújo da Silva', NULL, 31415.92, 1134561234, NULL);

-- Inserção de dados na tabela Gratificação
INSERT INTO "gratificação" VALUES (1, NULL, 50.25);
INSERT INTO "gratificação" VALUES (2, 'Ajudante de Contratação', 250.00);
INSERT INTO "gratificação" VALUES (3, NULL, 1000.00);
INSERT INTO "gratificação" VALUES (4, 'Ajudante de Avaliação', 500.00);
INSERT INTO "gratificação" VALUES (5, 'Hora Extra', 150.00);
INSERT INTO "gratificação" VALUES (6, NULL, 5000.00);
INSERT INTO "gratificação" VALUES (7, NULL, 322.00);
INSERT INTO "gratificação" VALUES (8, 'Entrevistador', 450.00);

-- Inserção de dados na tabela Empregado
INSERT INTO empregado VALUES (556, 'Josivaldo Nunes França', '1990-12-11', 4500.56, 'M', 'PB', 'Rua Dorgival Dantas de Fagundes', 1376, 6);
INSERT INTO empregado VALUES (762, 'Sadraque Juvenildo César', '1978-04-23', 10000.78, NULL, 'PE', 'Rua Dorival Freitas Nunes', NULL, 7);
INSERT INTO empregado VALUES (22, 'Joselito Martinho da Silva', '1974-05-19', 6500.00, 'M', 'SP', 'Rua Adalgisa Gabriela Gomes', 2222, 1);
INSERT INTO empregado VALUES (13, 'Joseildo Sidney da Silva', '1982-09-12', 3200.90, 'M', 'MG', NULL, NULL, 8);
INSERT INTO empregado VALUES (39, 'Rayssa Fagundes de Sá', '2002-02-02', 50000.95, 'F', 'PA', 'Avenida Passos dos Leões', NULL, 2);
INSERT INTO empregado VALUES (45, 'Simone Araújo do Amaral', '1975-05-20', 1500.00, 'F', 'GO', 'Rua Doutora Hermione Granger', 310, 5);
INSERT INTO empregado VALUES (190, 'João Nunes Marcos', '2001-07-23', 1000.67, 'M', 'RO', NULL, NULL, 4);
INSERT INTO empregado VALUES (911, 'Sonia Abravanel Sales de Freitas Nunes Gomes Santana', '1965-03-25', 7850.90, 'F', 'RJ', 'Rua Cefalópodes Antunes', 900, 2);

-- INSERT INTO * VALUES (); 
-- date -> ('yyyy-mm-dd') sem os parenteses, logicamente