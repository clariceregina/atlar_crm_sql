-- Crie uma tabela clientes com os seguintes campos:
-- id (inteiro, chave primária)
-- nome (texto, obrigatório)
-- cidade (texto, valor padrão: 'São Paulo')
-- ativo (booleano, valor padrão: TRUE)
CREATE TABLE tabela_clientes (
  id INT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  cidade VARCHAR(255) DEFAULT 'São Paulo',
  ativo BOOLEAN DEFAULT TRUE
);

-- Insira os seguintes clientes na tabela acima sem utilizar DEFAULT:
-- João, de Belo Horizonte, ativo
-- Maria, sem cidade especificada
-- Pedro, de Recife, inativo
-- Ana, sem cidade e sem status
INSERT INTO tabela_clientes(id, nome, cidade, ativo) VALUES (1, 'João', 'Belo Horizonte', TRUE);
INSERT INTO tabela_clientes(id, nome) VALUES (2, 'Maria');
INSERT INTO tabela_clientes(id, nome, cidade, ativo) VALUES (3, 'Pedro', 'Recife', FALSE);
INSERT INTO tabela_clientes(id, nome) VALUES (4, 'Ana');

-- A tabela pedidos já existe com colunas id, cliente_id, valor e status. Adicione um valor padrão 'PENDENTE' para a coluna status.
ALTER TABLE tabela_clientes
add COLUMN 'status' DEFAULT 'pendente';

-- Remova o valor padrão da coluna cidade da tabela clientes.
ALTER TABLE tabela_clientes
ALTER COLUMN cidade DROP DEFAULT;

-- Insira um novo cliente chamado "Carlos" e defina explicitamente o valor padrão para a coluna cidade.
INSERT INTO tabela_clientes (id, nome, cidade, ativo, status) VALUES (10, 'Carlos', DEFAULT, DEFAULT, DEFAULT);