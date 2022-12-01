-- 1. Selecione todos os usuários da tabela de usuários?
SELECT * FROM tb_usuario;


-- 2. Contar quantos registros tem em cada tabela;

SELECT COUNT(*) FROM tb_usuario;
SELECT COUNT(*) FROM tb_assinatura; 
SELECT COUNT(*) FROM tb_forma_pagamento; 
SELECT COUNT(*) FROM tb_avaliacao;
SELECT COUNT(*) FROM tb_comentario;
SELECT COUNT(*) FROM tb_filme; 
SELECT COUNT(*) FROM tb_serie; 
SELECT COUNT(*) FROM tb_unidades;

-- 3. Informar quantas notas de avaliação distintas existem para a tabela avaliação na coluna nota_avaliacao;

SELECT COUNT (DISTINCT nota_avaliacao)
FROM tb_avaliacao;

-- 4. Selecionar quais valores distintos existem para a tabela avaliação na coluna nota_avaliacao;

SELECT DISTINCT nota_avaliacao
FROM tb_avaliacao;

-- 5. Informar quantos valores distintos existem para a tabela mídia na coluna tipo;

SELECT COUNT (DISTINCT tipo_midia)
FROM tb_midia;

-- 6. Selecionar quais valores distintos existem para a tabela mídia na coluna tipo;

SELECT DISTINCT tipo_midia
FROM tb_midia;

-- 7. Selecionar quais usuários não tem uma nota_avaliacao;

SELECT *FROM tb_avaliacao WHERE nota_avaliacao = NULL;

-- 9. Listar os usuários ordenados pelo id;

SELECT F.nome_usuario FROM tb_usuario F
ORDER BY F.id_usuario; 

-- 10. Listar os usuários ordenados pelo nome;

SELECT F.nome_usuario FROM tb_usuario F
ORDER BY F.nome_usuario ASC; 

