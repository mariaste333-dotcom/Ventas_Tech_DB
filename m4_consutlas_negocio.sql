USE Ventas_Tech_DB;
SELECT
MONTH (fecha_venta) AS mes,
SUM (cantidad * precio_unitario) AS total_facturado,
COUNT (*) AS cantidad_pedidos,
AVG (cantidad * precio_unitario) AS ticket_promedio
FROM ventas
GROUP BY MONTH (fecha_venta)
ORDER BY mes;

SELECT TOP 5
id_producto,
SUM (cantidad) AS unidades_vendidas,
SUM (cantidad * precio_unitario) AS total_facturado
FROM ventas
GROUP BY id_producto
ORDER BY total_facturado DESC;

SELECT
id_cliente,
COUNT (*) AS cantidad_pedidos,
SUM (cantidad*precio_unitario) AS total_gastado
FROM ventas
GROUP BY id_cliente
HAVING COUNT (*) >1;

SELECT
MONTH (fecha_venta) AS mes,
SUM (cantidad*precio_unitario) AS total_facturado,
CASE 
WHEN SUM (cantidad*precio_unitario) >
(SELECT AVG(total_mensual)
FROM ( 
SELECT
SUM (CANTIDAD*PRECIO_UNITARIO) AS total_mensual
from ventas
group by month (fecha_venta)
) AS resumen_mensual
)
THEN 'por encima'
ELSE 'por debajo'
END AS comparacion_promedio
FROM ventas
GROUP BY MONTH (fecha_venta)
ORDER BY mes;

hallazgos
en marzo hubo 10 ventas y se facturo $6.444
el producto 1 fue el que mas facturo, con un total de $3.600
todos los clientes hicieron mas de una compra