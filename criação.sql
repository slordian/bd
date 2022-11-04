-- Ainda falta um check nessa merda
CREATE TABLE departamento (
	id_departamento INT PRIMARY KEY CHECK (id_departamento > 0),
  	nome VARCHAR(67) NOT NULL,
	localização VARCHAR(67)  	
);

CREATE TABLE projeto (
	id_projeto INT PRIMARY KEY,
	nome VARCHAR(67),
	orçamento NUMERIC(11,2) NOT NULL CHECK (orçamento > 0),
	data_de_início DATE NOT NULL,
	previsão_de_conclusão DATE,
	id_departamento INT REFERENCES departamento(id_departamento) NOT NULL
);

CREATE TABLE candidato (
	cpf INT PRIMARY KEY CHECK (cpf > 0 /*and cpf <= 99999999999*/),
	nome VARCHAR(67) NOT NULL,
	cargo_pretendido VARCHAR(67),
	salário_pretendido numeric(8,2) CHECK (salário_pretendido > 0),
	telefone1 INT NOT NULL,
	telefone2 INT
);