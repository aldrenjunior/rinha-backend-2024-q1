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
    ('o barato sai caro', 1000 * 100, 0),
    ('zan corp ltda', 800 * 100, 0),
    ('les cruders', 10000 * 100, 0),
    ('padaria joia de cocaia', 100000 * 100, 0),
    ('kid mais', 5000 * 100, 0);
END; $$