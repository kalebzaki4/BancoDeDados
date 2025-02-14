
-- Aula 2
--Criando banco de dados
CREATE DATABASE SUCOS_VENDAS;

-- Base de dados pelo assistente
CREATE DATABASE SUCOS_VENDAS_2;

-- Remover basde de dados
DROP DATABASE SUCOS_VENDAS_2;

-- Criar tabelas

--Clientes
/*Colunas:
CPF;
Nome completo;
Endereco completo;
Data de nascimento;
Idade;
Genero;
Limite de credito;
Volume minimo de compra de produto;
Se já realizou alguma compra na empresa.*/

CREATE TABLE [TABELA DE CLIENTES]
(
[CPF] [CHAR] (11),
[NOME] [VARCHAR] (100),
[RUA] [VARCHAR] (150),
[COMPLEMENTO] [VARCHAR] (150),
[BAIRRO] [VARCHAR] (150),
[ESTADO] [CHAR] (2),
[CEP] [CHAR] (8),
[DATA DE NASCIMENTO] [DATE],
[IDADE] [SMALLINT],
[SEXO] [CHAR] (1),
[LIMITE DE CREDITO] [MONEY],
[VOLUME DE COMPRA] [FLOAT],
[PRIMEIRA COMPRA] [BIT]
)


--Produtos

/*Colunas:
codigo do produto;
nome do produto;
embalagem;
tamanho;
sabor;
preco de lista.
*/

CREATE TABLE [TABELA DE PRODUTOS]
(
[CODIGO DO PRODUTO] [VARCHAR] (20) NOT NULL PRIMARY KEY,
[NOME DO PRODUTO] [VARCHAR] (50),
[EMBALAGEM] [VARCHAR] (50),
[TAMANHO] [VARCHAR] (50),
[SABOR] [VARCHAR] (50),
[PRECO DE LISTA] [SMALLMONEY]
)



-- Alterar tabela

ALTER TABLE [TABELA DE CLIENTES] ALTER COLUMN [CPF] CHAR(11) NOT NULL;

ALTER TABLE [TABELA DE CLIENTES] ADD CONSTRAINT PK_TABELA_CLIENTES
PRIMARY KEY CLUSTERED ([CPF])