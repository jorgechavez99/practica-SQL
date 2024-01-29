
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
WHERE composer= 'AC/DC';


SELECT tracks.*
FROM tracks
INNER JOIN albums ON tracks.AlbumId=albums.AlbumId
INNER JOIN artists ON artists.ArtistId=albums.ArtistId
WHERE artists.Name LIKE '%AC/DC%';
-- 4. Muestra los clientes que no sean de USA: Nombre completo, ID, Pais*

SELECT *
FROM customers;

SELECT FirstName|| " " ||LastName AS nombreCompleto,
CustomerId as ID,
country as País
FROM customers
WHERE NOT country= 'USA';
-- 5. Muestrame los empleados que son agentes de ventas: Nombre completo, Dirección
-- (Ciudad, Estado, Pais) y email

SELECT *
FROM employees;

SELECT FirstName|| " " ||LastName AS NombreCompleto,
City|| " " || State || " " || Country AS Direccion,
Email
FROM employees
WHERE title='Sales Support Agent'
-- 6. Muestra una lista con los paises que aparecen a los que se ha facturado, la lista no
-- debe contener paises repetidos*

SELECT *
FROM invoices;

SELECT DISTINCT BillingCountry
FROM Invoices
WHERE BillingState IS NOT NULL
ORDER BY BillingCountry DESC;

-- 7. Muestra una lista con los estados de USA de donde son los clientes, la lista no debe
-- contener estados repetidos

SELECT *
FROM customers;

SELECT DISTINCT state AS estado,
COUNT (CustomerId) AS NumeroClientes
FROM customers
  WHERE country = 'USA'
  GROUP BY State
  ORDER BY state DESC;
-- 8. Cuantos articulos tiene la factura 37*

SELECT *
FROM invoices;

SELECT COUNT(*) AS cantidad37
FROM invoice_items
WHERE invoiceId=37;

SELECT
invoiceId,SUM(Quantity) AS cantidad
FROM invoice_items
WHERE invoiceId IN (37,21,32)
GROUP BY invoiceId;
-- 9. Cuantas canciones tiene ‘AC/DC’

SELECT *
FROM tracks;


SELECT COUNT(TrackId) AS Canciones
FROM tracks 
WHERE tracks.composer = 'AC/DC';

SELECT COUNT(trackID)
FROM tracks
INNER JOIN albums ON tracks.AlbumId=albums.AlbumId
INNER JOIN artists ON artists.ArtistId=albums.ArtistId
WHERE artists.Name LIKE '%AC/DC%'

-- 10. Cuantos articulos tiene cada factura*

SELECT *
FROM invoices;


SELECT invoiceId , 
COUNT(invoiceid) AS Articulos
 FROM invoice_items 
 GROUP BY invoiceId
-- 11. Muestrame cuantos facturas hay de cada pais
SELECT *
FROM invoices;


SELECT billingCountry,
 COUNT(invoiceId) AS facturasxPais
 FROM invoices 
 GROUP BY billingCountry;
-- 12. Cuantas facturas ha habido en 2009 y 2011*
SELECT *
FROM invoices;



SELECT *
FROM invoices
WHERE invoiceDate
BETWEEN '2009-01-01' AND '2009-12-31' OR invoiceDate
BETWEEN '2011-01-01' AND '2011-12-31';

SELECT COUNT(*) AS EN
FROM invoices
WHERE invoiceDate
BETWEEN '2009-01-01' AND '2009-12-31' OR invoiceDate
BETWEEN '2011-01-01' AND '2011-12-31';
-- 13. Cuantas facturas ha habido entre 2009 y 2011*
SELECT *
FROM invoices;


SELECT *
FROM invoices
WHERE invoiceDate
BETWEEN '2009-01-01' AND '2011-12-31';

SELECT COUNT(*) AS ENTRE
FROM invoices
WHERE invoiceDate
BETWEEN '2009-01-01' AND '2011-12-31';
-- 14. Cuantos clientes hay de españa y de Brazil
SELECT *
FROM customers;


SELECT customerId
FROM customers
WHERE country = 'Spain' OR country = 'Brazil';

SELECT COUNT(customerId) AS CLIENTES
FROM customers
WHERE country = 'Spain' OR country = 'Brazil';
-- 15. Muestrame las canciones que su titulo empieza por ‘You’
SELECT *
FROM tracks;


SELECT * 
FROM tracks
WHERE name 
LIKE 'You%';