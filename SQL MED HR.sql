SQL

/*Generate the following two result sets:
Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession
as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S)
Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in
the following format:
There are a total of [occupation_count] [occupation]s.
where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation
name. If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.*/

SELECT CONCAT(NAME,CONCAT('(',LEFT(OCCUPATION,1),')'))
FROM OCCUPATIONS
ORDER BY NAME ASC;
SELECT  "There are a total of ",COUNT(OCCUPATION), CONCAT(LOWER(OCCUPATION),'s.')
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(OCCUPATION) ASC,LOWER(OCCUPATION) ASC;

/*Consider  and  to be two points on a 2D plane.
 happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
 happens to equal the minimum value in Western Longitude (LONG_W in STATION).
 happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
 happens to equal the maximum value in Western Longitude (LONG_W in STATION).
Query the Manhattan Distance between points  and  and round it to a scale of  decimal places.*/

SELECT CONVERT(DECIMAL (12,4),(((MAX(LONG_W))-(MIN(LONG_W)))+((MAX(LAT_N))-(MIN(LAT_N)))))
FROM STATION;

/*Consider  and  to be two points on a 2D plane where  are the respective minimum and maximum values of Northern Latitude (LAT_N)
and  are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.
Query the Euclidean Distance between points  and  and format your answer to display  decimal digits.*/

SELECT CONVERT(DECIMAL (12,4),(SQRT(POWER((MAX(LONG_W))-(MIN(LONG_W)),2)+POWER((MAX(LAT_N))-(MIN(LAT_N)),2))))
FROM STATION;