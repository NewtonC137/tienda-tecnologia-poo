-- ===========================
--      DATOS DE GERENTE
-- ===========================
INSERT INTO gerente (nombre, usuario, password_hash)
VALUES
('Carlos Medina', 'cmedina', '123456');

-- ===========================
--      DATOS DE EMPLEADOS
-- ===========================
INSERT INTO empleado (nombre, usuario, password_hash, cargo, id_gerente)
VALUES
('Andrea López', 'alopez', '123456', 'Vendedora', 1),
('Juan Torres', 'jtorres', '123456', 'Vendedor', 1),
('Mariana Ríos', 'mrios', '123456', 'Asistente', 1);

-- ===========================
--      DATOS DE CLIENTES
-- ===========================
INSERT INTO cliente (nombre, telefono, direccion)
VALUES
('Luis Hernández', '3001112233', 'Calle 12 # 8 - 21'),
('Ana Pérez', '3014456677', 'Av. Central 40 - 10'),
('Camilo Rojas', '3028897766', 'Cra 5 # 22 - 33'),
('Jenny García', '3049876655', 'Barrio El Prado'),
('Roberto Díaz', '3051122334', 'Calle 34 # 5 - 12');

-- ===========================
--      DATOS DE PRODUCTOS
-- ===========================
INSERT INTO producto (nombre, descripcion, precio, stock)
VALUES
('Laptop Lenovo', 'Intel i5, 8GB RAM, 256GB SSD', 2200000, 10),
('Mouse Logitech', 'Mouse inalámbrico', 60000, 50),
('Teclado Redragon', 'Teclado mecánico RGB', 180000, 25),
('Monitor Samsung 24"', 'Full HD 75Hz', 550000, 15),
('Auriculares Sony', 'Bluetooth con micrófono', 330000, 20),
('Memoria USB 32GB', 'USB 3.0', 35000, 60);

-- ===========================
--      VENTA 1
-- ===========================
INSERT INTO venta (id_cliente, id_empleado, total)
VALUES (1, 1, 2360000);  -- Suma de laptop + mouse

INSERT INTO detalle_venta (id_venta, id_producto, cantidad, precio_unitario, subtotal)
VALUES
(1, 1, 1, 2200000, 2200000),
(1, 2, 1, 60000, 60000);

-- ===========================
--      VENTA 2
-- ===========================
INSERT INTO venta (id_cliente, id_empleado, total)
VALUES (3, 2, 715000);  -- Monitor + USB

INSERT INTO detalle_venta (id_venta, id_producto, cantidad, precio_unitario, subtotal)
VALUES
(2, 4, 1, 550000, 550000),
(2, 6, 1, 35000, 35000);
