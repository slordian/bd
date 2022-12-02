-- Enunciado: Mostre os empregados que têm a matrícula entre 0 e 50

SELECT * FROM empregado WHERE matrícula BETWEEN 0 AND 50;

-----------------------------------------------------------------
-----------------------------------------------------------------

-- Enunciado: Mostre os candidatos que não têm um cargo pretendido

SELECT * FROM candidato WHERE cargo_pretendido IS NULL;

-----------------------------------------------------------------
-----------------------------------------------------------------

-- Enunciado: Mostre as informações dos empregados que moram em São Paulo, Santa Catarina e Rondônia

SELECT * FROM empregado WHERE uf IN ('SP', 'SC', 'RO');

-----------------------------------------------------------------
-----------------------------------------------------------------

-- Enunciado: Mostre as linhas da tabela de gratificações onde a atividade contiver Ajudante

SELECT * FROM gratificacao WHERE atividade LIKE 'Ajudante %';

-----------------------------------------------------------------
-----------------------------------------------------------------

-- Enunciado: Mostre a tabela dos projetos da linha com menor orçamento para a linha com maior orçamento

SELECT * FROM projeto ORDER BY orçamento ASC;

-----------------------------------------------------------------
-----------------------------------------------------------------

-- Enunciado: Mostre quantos projetos existem por departamento

SELECT id_departamento, COUNT(id_projeto)
FROM projeto GROUP BY id_departamento
ORDER BY id_departamento;

-----------------------------------------------------------------
-----------------------------------------------------------------

-- Enunciado: Mostre os maiores e menores salários por sexo

SELECT sexo, MAX(salário) AS "maior salário", MIN(salário) AS "menor salário"
FROM empregado
GROUP BY sexo;

-----------------------------------------------------------------
-----------------------------------------------------------------

-- Enunciado: Mostre a soma de todas as horas trabalhadas em projetos de recrutamento

SELECT SUM(horas_trabalhadas)
FROM recrutamento_empregado;

-----------------------------------------------------------------
-----------------------------------------------------------------

-- Enunciado: Mostre a média de salários pretendidos pelos candidatos

SELECT CAST(AVG(salário_pretendido) AS NUMERIC(8, 2)) AS "média de salários pretendidos"
FROM candidato;

-----------------------------------------------------------------
-----------------------------------------------------------------

-- Enunciado: Mostre 


-----------------------------------------------------------------
-----------------------------------------------------------------

