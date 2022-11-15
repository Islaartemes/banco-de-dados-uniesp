create table tb_assinatura (
	id_assinatura INT IDENTITY(1,1) NOT NULL,
	tipo_assinatura CHAR(1),
	status_assinatura CHAR NOT NULL,
	constraint pk_tb_assinatura primary key(id_assinatura)

);

select * from tb_assinatura


create table tb_forma_pagamento (
	id_forma_pagamento INT IDENTITY(1,1) NOT NULL,
	descricao_forma_pagamento VARCHAR(255) NOT NULL,
	constraint pk_tb_forma_pagamento primary key(id_forma_pagamento)

);

create table tb_usuario (
	id_usuario INT IDENTITY(1,1) NOT NULL,
	nome_usuario VARCHAR(100) NOT NULL,
	email_usuario VARCHAR(50) NOT NULL,
	cpf_usuario VARCHAR(11) NOT NULL,
	constraint pk_tb_usuario primary key(id_usuario),
	id_assinatura INT NOT NULL,
	constraint fk_tb_usuario_tb_assinatura foreign key (id_assinatura)
	references tb_assinatura (id_assinatura),
	id_forma_pagamento INT NOT NULL,
	constraint fk_tb_usuario_tb_forma_pagamento foreign key (id_forma_pagamento)
	references tb_forma_pagamento (id_forma_pagamento)
);

create table tb_avaliacao (
	id_avaliacao INT IDENTITY(1,1) NOT NULL,
	nota_avaliacao VARCHAR(2) NOT NULL,
	constraint pk_tb_avaliacao primary key (id_avaliacao),
	id_usuario INT NOT NULL,
	constraint fk_tb_avaliacao_tb_usuario foreign key (id_usuario)
	references tb_usuario (id_usuario)
);

create table tb_midia (
	id_midia INT IDENTITY(1,1) NOT NULL,
	descricao_midia VARCHAR(255) NOT NULL,
	nome_midia VARCHAR(100) NOT NULL,
	tipo_midia CHAR (1),
	genero_midia VARCHAR(50),
	constraint pk_tb_midia primary key (id_midia)
);

create table tb_comentario (
	id_comentario INT IDENTITY(1,1) NOT NULL,
	conteudo_comentario VARCHAR(255) NOT NULL,
	curtidas_comentario INT NOT NULL,
	constraint pk_tb_comentario primary key (id_comentario),
	id_midia INT NOT NULL,
	constraint fk_tb_comentario_tb_midia foreign key (id_midia)
	references tb_midia (id_midia),
	id_usuario INT NOT NULL,
	constraint fk_tb_comentario_tb_usuario foreign key (id_usuario)
	references tb_usuario (id_usuario)
);

create table tb_serie (
	id_serie INT IDENTITY(1,1) NOT NULL,
	descricao_serie VARCHAR(255) NOT NULL,
	constraint pk_tb_serie primary key (id_serie),
	id_midia INT NOT NULL,
	constraint fk_tb_serie_tb_midia foreign key (id_midia)
	references tb_midia (id_midia)
);

create table tb_filme (
	id_filme INT IDENTITY(1,1) NOT NULL,
	descricao_filme VARCHAR(255) NOT NULL,
	constraint pk_tb_filme primary key (id_filme),
	id_midia INT NOT NULL,
	constraint fk_tb_filme_tb_midia foreign key (id_midia)
	references tb_midia (id_midia)
);

create table tb_unidades (
	id_unidades INT IDENTITY(1,1) NOT NULL,
	temporada_unidades VARCHAR(5) NOT NULL,
	episodio_unidades VARCHAR(5) NOT NULL,
	nome_unidades VARCHAR(100) NOT NULL,
	descricao_unidades VARCHAR(255) NOT NULL,
	constraint pk_tb_unidades primary key (id_unidades),
	id_serie INT NOT NULL,
	constraint fk_tb_unidades_tb_serie foreign key (id_serie)
	references tb_serie (id_serie)
);