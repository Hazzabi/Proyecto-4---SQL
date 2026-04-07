-- ----------------------------------------------------------------
-- Proyecto 4: SQL - Base de datos de reservas de vuelos - Gabriela Garcia
-- Base de datos: demo (Postgres Pro - Bookings)
-- ----------------------------------------------------------------


-- EJERCICIO 1
-- Vuelos (flights) y su identificador con status On Time

SELECT flight_id, flight_no, status
FROM flights
WHERE status = 'On Time';
-- ----------------------------------------------------------------

-- EJERCICIO 2
-- Todas las columnas de bookings con total_amount mayor a 1.000.000 

SELECT *
FROM bookings
WHERE total_amount > 1000000;
-- ----------------------------------------------------------------

-- EJERCICIO 3
-- Todas las columnas de los modelos de aviones disponibles

SELECT *
FROM aircrafts_data;
-- ----------------------------------------------------------------


-- EJERCICIO 4
-- Identificadores de vuelo que han volado con un Boeing 737

SELECT flight_id, flight_no, aircraft_code
FROM flights
WHERE aircraft_code = '733';
-- ----------------------------------------------------------------


-- EJERCICIO 5
-- Informacion detallada de tickets de pasajeros llamados 'Irina'

SELECT t.*
FROM tickets t
WHERE t.passenger_name LIKE 'IRINA %';
-- ----------------------------------------------------------------


-- EJERCICIO 6 
-- Ciudades con mas de un aeropuerto

SELECT city, COUNT(*) AS num_aeropuertos
FROM airports_data
GROUP BY city
HAVING COUNT(*) > 1;
-- ----------------------------------------------------------------


-- EJERCICIO 7 
-- Numero de vuelos por modelo de avion

SELECT f.aircraft_code,
       ad.model,
       COUNT(f.flight_id) AS num_vuelos
FROM flights f
JOIN aircrafts_data ad ON f.aircraft_code = ad.aircraft_code
GROUP BY f.aircraft_code, ad.model
ORDER BY num_vuelos DESC;
-- ----------------------------------------------------------------


-- EJERCICIO 8 
-- Reservas con mas de un billete (varios pasajeros)

SELECT t.book_ref, COUNT(t.ticket_no) AS num_billetes
FROM tickets t
GROUP BY t.book_ref
HAVING COUNT(t.ticket_no) > 1
ORDER BY num_billetes DESC;
-- ----------------------------------------------------------------


-- EJERCICIO 9 
-- Vuelos con retraso de salida superior a una hora

SELECT flight_id,
       flight_no,
       scheduled_departure,
       actual_departure,
       (actual_departure - scheduled_departure) AS retraso
FROM flights
WHERE actual_departure IS NOT NULL
  AND (actual_departure - scheduled_departure) > INTERVAL '1 hour'
ORDER BY retraso DESC;
-- ----------------------------------------------------------------