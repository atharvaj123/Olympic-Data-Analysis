create database Olympic;
use Olympic;
select * from olympic;

SELECT DISTINCT CONCAT(Name) AS 'Full Name'
FROM olympic
WHERE Team = 'United States' AND Age = 25 ORDER BY 'Full Name' ASC;

SELECT MAX(Team) FROM olympic;  

SELECT MIN(Team) FROM olympic;  

SELECT Team, Sport, ROUND(AVG(Age), 2) AS "Average Age" FROM olympic GROUP BY Team, Sport;

SELECT Team, Medal, COUNT(*) AS 'Medal Count'
FROM olympic
WHERE Sport = 'Basketball'
GROUP BY Team, Medal;

SELECT Name AS 'Full Name', Team, Games, Year, City, Sport, Medal, Event FROM olympic WHERE Year BETWEEN 1990 AND 2017
ORDER BY Team LIMIT 20;

SELECT Name AS 'Full Name', Games, Year, City, Sport, Medal FROM olympic WHERE Team = 'United States' AND Medal = 'Bronze'
ORDER BY Year DESC LIMIT 20;

SELECT Sport, Event, City, COUNT(Medal = 'Gold') AS 'Gold Medals'FROM olympic WHERE Team = 'Spain' AND Year = 2014 GROUP BY Sport, Event, City;

SELECT Sport, Event, City, COUNT(Medal) AS 'Total Medals'FROM olympic WHERE Games = '2012 Summer'GROUP BY Sport, Event, City
ORDER BY 'Total Medals' DESC LIMIT 10;

SELECT Sport, Event, City, COUNT(Medal = 'Silver') AS 'Total Medals'FROM olympic WHERE Team = 'Mexico' AND Year = 2016 GROUP BY Sport, Event, City;


 



