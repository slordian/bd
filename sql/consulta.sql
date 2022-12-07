-- Enunciado: Mostre os empregados que têm a matrícula entre 0 e 50.

SELECT * FROM empregado WHERE matrícula BETWEEN 0 AND 50;

-----------------------------------------------------------------
-----------------------------------------------------------------

-- Enunciado: Mostre os candidatos que não têm um cargo pretendido.

SELECT * FROM candidato WHERE cargo_pretendido IS NULL;

-----------------------------------------------------------------
-----------------------------------------------------------------

-- Enunciado: Mostre as informações dos empregados que moram em São Paulo, Santa Catarina e Rondônia.

SELECT * FROM empregado WHERE uf IN ('SP', 'SC', 'RO');

-----------------------------------------------------------------
-----------------------------------------------------------------

-- Enunciado: Mostre as linhas da tabela de gratificações onde a atividade contiver Ajudante.

SELECT * FROM gratificacao WHERE atividade LIKE 'Ajudante %';

-----------------------------------------------------------------
-----------------------------------------------------------------

-- Enunciado: Mostre a tabela dos projetos da linha com menor orçamento para a linha com maior orçamento.

SELECT * FROM projeto ORDER BY orçamento ASC;

-----------------------------------------------------------------
-----------------------------------------------------------------

-- Enunciado: Mostre quantos projetos existem por departamento.

SELECT id_departamento, COUNT(id_projeto)
FROM projeto GROUP BY id_departamento
ORDER BY id_departamento;

-----------------------------------------------------------------
-----------------------------------------------------------------

-- Enunciado: Mostre os maiores e menores salários por sexo.

SELECT sexo, MAX(salário) AS "maior salário", MIN(salário) AS "menor salário"
FROM empregado
GROUP BY sexo;

-----------------------------------------------------------------
-----------------------------------------------------------------

-- Enunciado: Mostre a soma de todas as horas trabalhadas em projetos de recrutamento.

SELECT SUM(horas_trabalhadas)
FROM recrutamento_empregado;

-----------------------------------------------------------------
-----------------------------------------------------------------

-- Enunciado: Mostre a média de salários pretendidos pelos candidatos.

SELECT CAST(AVG(salário_pretendido) AS NUMERIC(8, 2)) AS "média de salários pretendidos"
FROM candidato;

-----------------------------------------------------------------
-----------------------------------------------------------------

-- Enunciado: Mostre o nome do empregado, as horas trabalhadas, o nome do projeto em que trabalhou e a gratificação que recebeu.

SELECT e.nome, p.nome AS "projeto", re.horas_trabalhadas, g.valor
FROM empregado e, recrutamento_empregado re, projeto p, gratificacao g
WHERE e.matrícula = re.matrícula AND re.id_projeto = p.id_projeto AND g.código = re.código_gratificação;

-----------------------------------------------------------------
-----------------------------------------------------------------

-- Enunciado: Mostre o nome do empregado eo departamento em que trabalha.

SELECT e.nome, d.nome
FROM empregado e JOIN departamento d
ON (e.id_departamento = d.id_departamento);

-----------------------------------------------------------------
-----------------------------------------------------------------

-- Enunciado: Mostre o nome do candidato, o código do projeto de recrutamento em que fez entrevista, a data da mesma, e se foi contratado ou não. Ordene pelo nome do candidato.

SELECT c.nome, 
    CASE 
        WHEN p.nome IS NULL THEN 
            'Sem nome' 
        ELSE 
            p.nome 
    END CASE, 
pc.data_entrevista, pc.contratação 
FROM candidato c
JOIN projeto_candidato pc ON (c.cpf = pc.cpf) 
JOIN projeto p ON (p.id_projeto = pc.id_projeto) 
ORDER BY c.nome ASC;

-----------------------------------------------------------------
-----------------------------------------------------------------

-- Enunciado: Mostre o código e o nome do projeto de recrutamento e a quantidade de entrevistas de cada um, caso tenha alguma. Ordene pelo código do projeto.

SELECT p.id_projeto, p.nome, COUNT(pc.data_entrevista)
FROM projeto p JOIN projeto_candidato pc ON (p.id_projeto = pc.id_projeto)
GROUP BY p.id_projeto, p.nome
ORDER BY p.id_projeto;

-----------------------------------------------------------------
-----------------------------------------------------------------

-- Enunciado: Mostre o nome do empregado, seu salário e o departamento em que trabalha.

SELECT e.nome, e.salário, d.nome AS departamento
FROM empregado e JOIN departamento d ON (e.id_departamento = d.id_departamento);

-----------------------------------------------------------------
-----------------------------------------------------------------