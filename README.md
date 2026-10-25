# Proyecto Ventas_Tech_DB

## Descripción del proyecto

Este proyecto consiste en crear y consultar una base de datos de ventas de productos tecnológicos utilizando SQL. El objetivo es organizar la información y analizar las ventas para obtener datos útiles para el negocio.

## Herramientas utilizadas

- SQL Server Express
- SQL Server Management Studio (SSMS)
- GitHub
- ChatGPT como herramienta de apoyo

## Base de datos

La base de datos se llama Ventas_Tech_DB y contiene cuatro tablas principales:

- clientes
- productos
- categorias
- ventas

## Consultas SQL

Se realizaron consultas para relacionar las tablas mediante INNER JOIN, calcular las ventas totales, obtener un resumen mensual y analizar qué productos generan mayores ingresos.

## Cómo ejecutar los scripts

1. Abrir SQL Server Management Studio.
2. Conectarse al servidor SQL.
3. Seleccionar la base de datos Ventas_Tech_DB.
4. Abrir el archivo SQL correspondiente.
5. Ejecutar la consulta con el botón Execute.

## Uso de inteligencia artificial

Se utilizó ChatGPT para revisar y mejorar consultas SQL, analizar los resultados y ayudar con la documentación del proyecto. Las sugerencias se comprobaron ejecutando las consultas en SQL Server.

## Cambios realizados con ayuda de IA

| Cambio | Qué decía la versión de IA | Cómo quedó | Por qué lo cambié |
|---|---|---|---|
| 1. Consulta con INNER JOIN | La IA sugirió unir las tablas de ventas, clientes, productos y categorías. | Revisé los nombres de las columnas y ejecuté la consulta en SQL Server. | Para comprobar que las relaciones funcionaran y que los resultados fueran correctos. |
| 2. Orden de los resultados | La consulta necesitaba ordenar las ventas por fecha. | Corregí la ubicación del punto y coma y dejé ORDER BY fecha_venta al final. | Porque inicialmente daba un error de sintaxis y después funcionó correctamente. |
| 3. Cálculo de ventas totales | La IA sugirió calcular el importe de cada venta. | Utilicé cantidad * precio_unitario AS total_venta. | Para obtener el total de cada venta y poder analizar los resultados. |
