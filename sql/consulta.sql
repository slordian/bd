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

SELECT * FROM "gratificação" WHERE atividade LIKE 'Ajudante %';

-----------------------------------------------------------------
-----------------------------------------------------------------

-- Enunciado: Mostre a tabela dos projetos da linha com menor orçamento para a linha com maior orçamento

SELECT * FROM projeto ORDER BY orçamento ASC;

-----------------------------------------------------------------
-----------------------------------------------------------------
