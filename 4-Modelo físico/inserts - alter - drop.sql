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



SELECT * FROM tb_filme

--TABELA AVALIACAO

INSERT INTO tb_avaliacao 
(id_usuario, nota_avaliacao)
VALUES
(1, '10'),
(2, '9'),
(3, '5'),
(4, '2'),
(5, '2'),
(6, '6'),
(7, '10'),
(8, '10'),
(9, '8'),
(10, '8'),
(11, '10');

INSERT INTO tb_midia
(descricao_midia, nome_midia, tipo_midia, genero_midia)
VALUES
('Policial tenta salvar vítimas no natal', 'Duro de matar', 'F', 'Suspense'),
('Relata o dia a dia de um advogado poderoso', 'Suits', 'S', 'Drama/Comédia'),
('Viagens no tempo', 'Dark', 'S', 'Drama'),
('Vampiro salva mocinha', 'Crepusculo', 'F', 'Drama'),
('Bella fica com Jacob', 'Lua Nova', 'F', 'Drama'),
('Bella entre Eduard e Jacob', 'Eclipse', 'F', 'Drama'),
('Casamento de Bela e Eduard', 'Amanhecer parte um', 'F', 'Drama'),
('Guerra com os Volture', 'Amanhecer parte dois', 'F', 'Drama'),
('A vida de Lorelai e Rory', 'Gilmore Girls', 'S', 'Comédia'),
('Uma menina muito legal', 'Wandinha', 'S', 'Suspense'),
('Uma academia de polícia diferente', 'Brooklyn nine-nine', 'S', 'Comédia');

INSERT INTO tb_comentario
(conteudo_comentario, curtidas_comentario, id_midia, id_usuario)
VALUES
('Chato', '0', 1, 1),
('Legal', '5', 2, 2),
('Divertido', '8', 3, 3),
('Genial', '10', 4, 4),
('Ruim', '3', 5, 5),
('Bom', '8', 6, 6),
('Péssimo', '0', 7, 7),
('Gostei', '9', 8, 8),
('Legal', '10', 9, 9),
('Legal', '9', 10, 10),
('Aterrorizante', '9', 11, 11);

INSERT INTO tb_serie
(descricao_serie, id_midia)
VALUES
('Relata o dia a dia de um advogado poderoso', 2),
('Viagens no tempo', 3),
('A vida de Lorelai e Rory', 9),
('Uma menina muito legal', 10),
('Uma academia de polícia diferente', 11);

INSERT INTO tb_filme
(descricao_filme, id_midia)
VALUES
('Policial tenta salvar vítimas no natal', 1),
('Vampiro salva mocinha', 4),
('Bella fica com Jacob', 5),
('Bella entre Eduard e Jacob', 6),
('Casamento de Bela e Eduard', 7),
('Guerra com os Volture', 8);

INSERT INTO tb_unidades
(temporada_unidades, episodio_unidades, nome_unidades, descricao_unidades, id_serie)
VALUES
('8', '10', 'Suits', 'Relata o dia a dia de um advogado poderoso', 1),
('4', '8', 'Dark', 'Viagens no tempo', 2),
('11', '22', ' Gilmore Girls', 'A vida de Lorelai e Rory', 3),
('1', '10', 'Wandinha', 'Uma menina muito legal', 4),
('7', '15', 'Brooklyn nine-nine', 'Uma academia de polícia diferente', 5);


--DROPANDO TABELA
DROP TABLE tb_segue;