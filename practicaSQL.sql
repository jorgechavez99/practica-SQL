
-- 1. Muestra los clientes de brasil*
SELECT *
FROM customers;

SELECT *
FROM customers
WHERE country='Brazil';

-- 2. Muestrame los empleados que son agentes de ventas*

SELECT *
FROM employees;

SELECT *
FROM employees
WHERE title ='Sales Support Agent'

-- 3. Muestrame las canciones de ‘AC/DC’
SELECT *
FROM tracks;

SELECT *
FROM tracks
WHERE composer= 'AC/DC'
-- 4. Muestra los clientes que no sean de USA: Nombre completo, ID, Pais*

SELECT *
FROM customers;

SELECT FirstName, LastName,CustomerId,Country
FROM customers
WHERE NOT country= 'USA'


-- 5. Muestrame los empleados que son agentes de ventas: Nombre completo, Dirección
-- (Ciudad, Estado, Pais) y email

SELECT *
FROM employees;

SELECT FirstName, LastName,City,Country,Email
FROM employees
WHERE title='Sales Support Agent'

-- 6. Muestra una lista con los paises que aparecen a los que se ha facturado, la lista no
-- debe contener paises repetidos*

SELECT *
FROM invoices;

SELECT DISTINCT BillingCountry
FROM Invoices

-- 7. Muestra una lista con los estados de USA de donde son los clientes, la lista no debe
-- contener estados repetidos
-- 8. Cuantos articulos tiene la factura 37*
-- 9. Cuantas canciones tiene ‘AC/DC’
-- 10. Cuantos articulos tiene cada factura*
-- 11. Muestrame cuantos facturas hay de cada pais
-- 12. Cuantas facturas ha habido en 2009 y 2011*
-- 13. Cuantas facturas ha habido entre 2009 y 2011*
-- 14. Cuantos clientes hay de españa y de Brazil
-- 15. Muestrame las canciones que su titulo empieza por ‘You’

4to D derecha izquierda el de la derecha