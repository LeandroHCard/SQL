SQL BASIC HR

--Query a count of the number of cities in CITY having a Population larger than 100.000.

SELECT COUNT(NAME)
FROM CITY
WHERE POPULATION > 100000;

--Query the total population of all cities in CITY where District is California.

SELECT SUM(POPULATION)
FROM CITY
WHERE DISTRICT = 'CALIFORNIA';

--Query the average population of all cities in CITY where District is California.

SELECT AVG(POPULATION)
FROM CITY
WHERE DISTRICT = 'CALIFORNIA';

--Query the average population for all cities in CITY, rounded down to the nearest integer.

SELECT ROUND(AVG(POPULATION)-0,5)
FROM CITY;

--Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.

SELECT SUM (POPULATION)
FROM CITY
WHERE COUNTRYCODE = 'JPN';

--Query the difference between the maximum and minimum populations in CITY.

SELECT ((MAX(POPULATION))-(MIN(POPULATION)))
FROM CITY;

--Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than  and less than .
-- Truncate your answer to  decimal places.

SELECT CONVERT(DECIMAL(12,4),(SUM(LAT_N)))
FROM STATION
WHERE LAT_N BETWEEN 38.7880 AND 137.2345;

--Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than . Truncate your answer to  decimal places.

SELECT TOP 1 (CONVERT(DECIMAL (12,4),(LAT_N)))
FROM STATION
WHERE LAT_N < 137.2345
ORDER BY LAT_N DESC;

--Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than . 
--Round your answer to  decimal places.

SELECT  TOP 1 CONVERT(DECIMAL (12,4),(LONG_W))
FROM STATION
WHERE LAT_N < 137.2345
ORDER BY LAT_N DESC;

--Query the smallest Northern Latitude (LAT_N) from STATION that is greater than . Round your answer to  decimal places.

SELECT  TOP 1 CONVERT(DECIMAL (12,4),(LAT_N))
FROM STATION
WHERE LAT_N > 38.7780
ORDER BY LAT_N ASC;

--Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than . 
--Round your answer to  decimal places.

SELECT  TOP 1 CONVERT(DECIMAL (12,4),(LONG_W))
FROM STATION
WHERE LAT_N > 38.7780
ORDER BY LAT_N ASC;


