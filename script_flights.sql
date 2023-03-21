ALTER TABLE airports
RENAME COLUMN faa TO dest;

ALTER TABLE airlines
RENAME COLUMN name TO airline_name;


CREATE TABLE flightsjoin AS (
SELECT *
	FROM flights
	LEFT JOIN airlines USING(carrier)
    LEFT JOIN airports USING(dest)
    LEFT JOIN planes USING(tailnum,year)
);




    


