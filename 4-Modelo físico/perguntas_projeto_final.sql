-- 1. Quantos usuarios est�o com assinatura ativa?
SELECT* FROM DBO.usuario;
SELECT* FROM DBO.assinatura; 
SELECT* FROM DBO.forma_pagamento; 
SELECT* FROM DBO.avaliacao;
SELECT* FROM DBO.comentario;
SELECT* FROM DBO.filme; 
SELECT* FROM DBO.serie; 
SELECT* FROM DBO.unidades;

-- 2. Contar quantos registros tem em cada tabela;

SELECT COUNT(*) FROM DBO.usuario;
SELECT COUNT(*) FROM DBO.assinatura; 
SELECT COUNT(*) FROM DBO.forma_pagamento; 
SELECT COUNT(*) FROM DBO.avaliacao;
SELECT COUNT(*) FROM DBO.comentario;
SELECT COUNT(*) FROM DBO.filme; 
SELECT COUNT(*) FROM DBO.serie; 
SELECT COUNT(*) FROM DBO.unidades;

-- 3. Informar quantas notas de avalia��o distintas existem para a tabela avalia��o na coluna nota_avaliacao;

SELECT COUNT (DISTINCT nota_avaliacao)
FROM.DBO.avaliacao;

-- 4. Selecionar quais valores distintos existem para a tabela avalia��o na coluna nota_avaliacao;

SELECT DISTINCT nota_avaliacao
FROM avaliacao;

-- 5. Informar quantos valores distintos existem para a tabela m�dia na coluna tipo;

SELECT COUNT (DISTINCT tipo)
FROM midia;

-- 6. Selecionar quais valores distintos existem para a tabela m�dia na coluna tipo;

SELECT DISTINCT tipo
FROM midia;

-- 7. Selecionar quais usu�rios n�o tem uma nota_avaliacao;

SELECT *FROM PET WHERE nota_avaliacao = NULL;

-- 9. Listar os usu�rios ordenados pelo id;

SELECT F.NOME FROM DBO.usuario F
ORDER BY F.id; 

-- 10. Listar os usu�rios ordenados pelo nome;

SELECT F.NOME FROM DBO.usuario F
ORDER BY F.NOME ASC; 

