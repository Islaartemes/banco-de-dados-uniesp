-- TABELA ASSINATURA
INSERT INTO tb_assinatura 
(tipo_assinatura, status_assinatura)
VALUES
('1', 'ATIVO'),
('1', 'ATIVO'),
('2', 'INATIVO'),
('1', 'ATIVO'),
('2', 'INATIVO'),
('1', 'ATIVO'),
('2', 'INATIVO'),
('1', 'ATIVO'),
('2', 'INATIVO');

-- TABELA FORMA DE PAGAMENTO
INSERT INTO tb_forma_pagamento
(descricao_forma_pagamento)
VALUES
('PIX'),
('BOLETO'),
('CARTAO DE CREDITO'),
('BOLETO'),
('CARTAO DE CREDITO'),
('BOLETO'),
('PIX'),
('BOLETO'),
('PIX'),
('CARTAO DE CREDITO'),
('PIX');

-- TABELA USUARIO
INSERT INTO tb_usuario
(nome_usuario, email_usuario, cpf_usuario, id_assinatura, id_forma_pagamento)
VALUES
('Maria Alice', 'maria.al@gmail.com', '01022340600', 9, 9),
('Helcius', 'helcius.ca@gmail.com', '01022237600', 8, 8),
('Bruno', 'bruno.ab@gmail.com', '01022365600', 7, 7),
('Anderson', 'anderson.cb@gmail.com', '01002345600', 6, 6),
('Joao Pedro', 'joao.abr@gmail.com', '00022345600', 5, 5),
('Jose Roberto', 'jose.afr@gmail.com', '01022345600', 4, 4),
('Maria Joana', 'joaana.ar@gmail.com', '01028345600', 3, 3),
('Gabriela Eduarda', 'biela.ar@gmail.com', '01022349600', 2, 2),
('Messias José', 'messias.bdd@gmail.com', '01022347600', 1, 1),
('Ana Joana', 'ana.joana@gmail.com', '01022335600', 11, 11);


--ALTERAÇÃO DE COLUNA DA TABELA

ALTER TABLE tb_assinatura ALTER COLUMN status_assinatura VARCHAR(25) NOT NULL


--ATUALIZAÇÃO DE COLUNA DA TABELA

UPDATE tb_assinatura SET status_assinatura = 'INATIVO' WHERE id_assinatura = 1;

--DROPANDO TABELA

DROP TABLE tb_avaliacao;

