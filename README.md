# Proyecto 4: Introducción a Bases de Datos SQL - Gabriela Garcia

## Descripción

Este proyecto es una introducción práctica a bases de datos relacionales usando **PostgreSQL**. El objetivo es aprender a realizar consultas SQL de lectura (SELECT) sobre una base de datos real, extrayendo información con distintas maneras de filtrado, agrupación y combinación de tablas.

---

## Base de datos utilizada

Se ha utilizado la base de datos de demostración **Bookings** proporcionada por [Postgres Pro](https://postgrespro.com/docs/postgrespro/current/demodb-bookings-installation.html), que simula un sistema de reservas de vuelos de una aerolínea rusa.


### Tablas principales

| Tabla | Descripción |
|---|---|
| `flights` | Vuelos con estado, fechas y modelo de avión |
| `bookings` | Reservas con importe total |
| `tickets` | Billetes asociados a cada reserva y pasajero |
| `ticket_flights` | Relación entre billetes y vuelos |
| `aircrafts_data` | Modelos de aviones disponibles |
| `airports_data` | Aeropuertos con ciudad y coordenadas |
| `boarding_passes` | Tarjetas de embarque |
| `seats` | Asientos por avión y clase |

---

## Conceptos practicados

- `SELECT` con columnas específicas y `SELECT *`
- Filtrado con `WHERE` (valores exactos, rangos numéricos, patrones de texto con `LIKE`)
- Agrupación con `GROUP BY` y filtrado de grupos con `HAVING`
- Combinación de tablas con `JOIN`
- Operaciones con fechas e intervalos (`INTERVAL`)
- Ordenación de resultados con `ORDER BY`
