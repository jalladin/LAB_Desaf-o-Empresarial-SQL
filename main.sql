1.

SELECT complaint_type, COUNT(*) AS complaint_count
FROM nyc_311_service_requests
GROUP BY complaint_type
ORDER BY complaint_count DESC
LIMIT 5;

Esta consulta agrupa los datos por tipo de queja y cuenta el número de veces que cada tipo de queja ha sido registrada. Los resultados se ordenan de forma descendente por el número de quejas, mostrando los 5 tipos de quejas más comunes. Esto nos ayuda a identificar los problemas más reportados por los ciudadanos, lo cual es crucial para priorizar recursos y atención.


2.
SELECT borough, COUNT(*) AS total_complaints
FROM nyc_311_service_requests
GROUP BY borough;

Aquí se calcula el número total de quejas para cada distrito (borough). Al agrupar por "borough", podemos ver la distribución de quejas por cada área de la ciudad de Nueva York, lo cual puede indicar áreas con más problemas o que requieren mayor atención de los servicios públicos.


3.
SELECT complaint_type, COUNT(*) AS complaint_count
FROM nyc_311_service_requests
GROUP BY complaint_type
HAVING COUNT(*) > 1000;
Esta consulta filtra los tipos de quejas que tienen más de 1000 registros. La cláusula HAVING se utiliza aquí para aplicar una condición de conteo después de la agrupación. Esto permite enfocar el análisis en los tipos de quejas que tienen un volumen significativo, lo cual puede ser útil para identificar problemas recurrentes y de gran impacto.

4.
SELECT borough, COUNT(*) AS complaint_count
FROM nyc_311_service_requests
WHERE complaint_type = 'Noise - Residential'
GROUP BY borough;
La consulta selecciona el tipo de queja específico "Noise - Residential" y cuenta cuántas veces se ha registrado en cada distrito. Esto permite comparar la frecuencia de un tipo específico de queja entre los diferentes distritos, ayudando a identificar áreas con más problemas relacionados con este tipo de queja.



    