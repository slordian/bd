-- Criação da tabela Departamento
CREATE TABLE departamento (
	id_departamento INT PRIMARY KEY CHECK (id_departamento > 0),
  	nome VARCHAR(67) NOT NULL,
	localização VARCHAR(67) CHECK (localização LIKE 'andar: %, bloco: %')	
);

-- Criação da tabela Projeto
CREATE TABLE projeto (
	id_projeto INT PRIMARY KEY,
	nome VARCHAR(67),
	orçamento NUMERIC(11,2) NOT NULL CHECK (orçamento > 0),
	data_início DATE NOT NULL,
	previsão_conclusão DATE,
	id_departamento INT REFERENCES departamento(id_departamento) NOT NULL
);

-- Criação da tabela Candidato
CREATE TABLE candidato (
	cpf BIGINT PRIMARY KEY CHECK (cpf > 0 AND cpf < 99999999999),
	nome VARCHAR(67) NOT NULL,
	cargo_pretendido VARCHAR(67),
	salário_pretendido NUMERIC(8,2) CHECK (salário_pretendido > 0),
	telefone1 BIGINT NOT NULL,
	telefone2 BIGINT
);

-- Criação da tabela Empregado
CREATE TABLE empregado (
	matrícula INT PRIMARY KEY,
	nome VARCHAR(67) NOT NULL,
	data_nascimento DATE NOT NULL,
	salário NUMERIC(8,2) NOT NULL CHECK (salário > 0),
	sexo CHAR(1) CHECK (sexo in ('M', 'F')),
	uf CHAR(2) NOT NULL,
	rua VARCHAR(67),
	número INT,
	id_departamento INT REFERENCES departamento(id_departamento) NOT NULL	
);

-- Criação da tabela Gratificação
CREATE TABLE "gratificação" (
	código INT PRIMARY KEY CHECK (código > 0),
	atividade VARCHAR(67),
	valor NUMERIC(8,2)  NOT NULL CHECK (valor > 0)
);

-- Criação da tabela Projeto_Gratificação
CREATE TABLE recrutamento_empregado (
	matrícula INT REFERENCES empregado(matrícula),
	id_projeto INT REFERENCES projeto(id_projeto),
	horas_trabalhadas INT NOT NULL CHECK (horas_trabalhadas >= 0),
	código_gratificação INT REFERENCES "gratificação"(código),
	PRIMARY KEY (matrícula, id_projeto)
);

-- Criação da tabela Projeto_Candidato
CREATE TABLE projeto_candidato (
	id_projeto INT REFERENCES projeto(id_projeto),
	cpf BIGINT REFERENCES candidato(cpf),
	data_entrevista DATE,
	contratação BOOLEAN NOT NULL,
	PRIMARY KEY (id_projeto, cpf)
);