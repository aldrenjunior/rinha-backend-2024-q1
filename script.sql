-- Coloque scripts iniciais aqui
CREATE TABLE clientes (
    id SERIAL PRIMARY KEY NOT NULL,
    nome VARCHAR(255),
    limite INTEGER NOT NULL,
    saldo INTEGER NOT NULL
); 

DO $$
BEGIN
  INSERT INTO clientes (nome, limite, saldo)
  VALUES
    ('nubank', 1000 * 100, 0),
    ('banco do brasil', 800 * 100, 0),
    ('bradesco', 10000 * 100, 0),
    ('itau', 100000 * 100, 0),
    ('santander', 5000 * 100, 0);
END; $$