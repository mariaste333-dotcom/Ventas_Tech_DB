SELECT
    v.fecha_venta,
    c.id_cliente,
    c.nombre AS cliente,
    p.nombre_producto,
    ca.nombre_categoria,
    v.cantidad,
    v.precio_unitario,
    v.cantidad * v.precio_unitario AS total_venta
FROM ventas v
INNER JOIN clientes c
    ON v.id_cliente = c.id_cliente
INNER JOIN productos p
    ON v.id_producto = p.id_producto
INNER JOIN categorias ca
    ON p.id_categoria = ca.id_categoria;


SELECT
    c.nombre,
    c.email,
    c.fecha_registro
FROM clientes c
LEFT JOIN ventas v
    ON c.id_cliente = v.id_cliente
WHERE v.id_venta IS NULL;


SELECT
    p.nombre_producto,
    ca.nombre_categoria,
    p.precio
FROM productos p
LEFT JOIN ventas v
    ON p.id_producto = v.id_producto
LEFT JOIN categorias ca
    ON p.id_categoria = ca.id_categoria
WHERE v.id_venta IS NULL;


SELECT
    canal,
    SUM(total_venta) AS total
FROM (
    SELECT
        fecha_venta,
        cantidad * precio_unitario AS total_venta,
        'Primer periodo' AS canal
    FROM ventas
    WHERE fecha_venta <= '2024-03-10'

    UNION ALL

    SELECT
        fecha_venta,
        cantidad * precio_unitario AS total_venta,
        'Segundo periodo' AS canal
    FROM ventas
    WHERE fecha_venta > '2024-03-10'
) AS ventas_unidas
GROUP BY canal;

