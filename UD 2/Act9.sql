-- Actividad Realizada por Daniel Marcos Ferreira Castaño y Vincent Leonardo Honorio Benito
-- PREPARACIÓN INICIAL --
CREATE DATABASE IF NOT EXISTS tienda_db;
USE tienda_db;

CREATE TABLE Clientes (
id_cliente INT PRIMARY KEY,
nombre VARCHAR (100),
email VARCHAR (100)
);

CREATE TABLE Pedidos (
id_pedido INT PRIMARY KEY,
id_cliente INT,
fecha_pedido DATE,
total DECIMAL (10, 2),
FOREIGN KEY (id_cliente) REFERENCES Clientes (id_cliente)
);

-- TAREAS --
-- 1.
CREATE ROLE IF NOT EXISTS rol_marketing, rol_ventas, rol_administrador_tienda;

-- 2.
GRANT SELECT, USAGE 
ON tienda_db.Clientes 
TO rol_marketing;
GRANT SELECT, USAGE 
ON tienda_db.Clientes 
TO rol_ventas;
GRANT SELECT, INSERT, UPDATE, USAGE
ON tienda_db.Pedidos
TO rol_ventas;
GRANT ALL PRIVILEGES ON tienda_db.* TO rol_administrador_tienda;

-- 3.
CREATE USER IF NOT EXISTS 'juan_mkt'@'localhost' IDENTIFIED BY 'MarketingPass123';
CREATE USER IF NOT EXISTS 'ana_vnt'@'localhost' IDENTIFIED BY 'VentasPass456';
CREATE USER IF NOT EXISTS 'jefe_db'@'localhost' IDENTIFIED BY 'AdminPass789';

-- 4.
GRANT rol_marketing TO 'juan_mkt'@'localhost';
GRANT rol_ventas TO 'ana_vnt'@'localhost';
GRANT rol_administrador_tienda TO 'jefe_db'@'localhost';

-- 5.
SET DEFAULT ROLE rol_marketing FOR 'juan_mkt'@'localhost';
SET DEFAULT ROLE rol_ventas FOR 'ana_vnt'@'localhost';
SET DEFAULT ROLE rol_administrador_tienda FOR 'jefe_db'@'localhost';

-- 6.
-- Nos conectamos como juan con el comando:
-- mariadb -u juan_mkt -p
-- Password: MarketingPass123
USE tienda_db;
SELECT * FROM Clientes;
INSERT INTO Pedidos (nombre)
VALUES
    ('Juan_mkt');

-- Nos conectamos como ana con el comando:
-- mariadb -u ana_vnt -p
-- Password: VentasPass456
USE tienda_db;
SELECT * FROM Clientes;
UPDATE Pedidos SET total=10 WHERE id_pedido=1;
DROP TABLE Clientes;

-- Nos conectamos como ana con el comando:
-- mariadb -u jefe_db -p
-- Password: AdminPass789
USE tienda_db;
CREATE TABLE IF NOT EXISTS prueba (
    e VARCHAR(100)
);
DROP TABLE prueba;

-- 7.
REVOKE UPDATE
ON tienda_db.Pedidos
FROM rol_ventas;
-- Nos conectamos como ana con el comando:
-- mariadb -u ana_vnt -p
-- Password: VentasPass456
USE tienda_db;
UPDATE Pedidos SET total=10 WHERE id_pedido=1;