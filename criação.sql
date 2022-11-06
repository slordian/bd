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

CREATE TABLE empregado (
	matrícula INT PRIMARY KEY,
	nome VARCHAR(67) NOT NULL,
	data_de_nascimento DATE NOT NULL,
	salário NUMERIC(8,2) NOT NULL CHECK (salário > 0),
	sexo CHAR(1) CHECK (sexo in ('M', 'F')),
	uf CHAR(2) NOT NULL,
	rua VARCHAR(67),
	número INT,
	id_departamento INT REFERENCES departamento(id_departamento) NOT NULL	
);

CREATE TABLE "gratifição" (
	código INT PRIMARY KEY CHECK (código > 0),
	atividade VARCHAR(67),
	valor NUMERIC(8,2) CHECK (valor > 0)
);

CREATE TABLE "projeto_gratificação" (
	matrícula INT REFERENCES empregado(matrícula),
	id_projeto INT REFERENCES projeto(id_projeto),
	horas_trabalhadas INT NOT NULL CHECK (horas_trabalhadas >= 0),
	código_gratificação INT REFERENCES "gratifição"(código),
	PRIMARY KEY (matrícula, id_projeto)
);

CREATE TABLE projeto_candidato (
	id_projeto INT REFERENCES projeto(id_projeto),
	cpf INT REFERENCES candidato(cpf),
	data_entrevista DATE,
	contratação BOOLEAN NOT NULL,
	PRIMARY KEY (id_projeto, cpf)
);