-- Find how many countries are there in Afirca
SELECT COUNT(*) AS "Afican countries"
FROM countries
WHERE continent = "Africa";

-- The total population of Oceania in 2005
SELECT SUM(population)
FROM population_years
JOIN countries
ON countries.id = population_years.country_id
WHERE continent = "Oceania"
AND YEAR = 2005;

-- Average population of countries in South
-- America in 2003
SELECT AVG(population)
FROM population_years
JOIN countries
ON countries.id = population_years.country_id
WHERE continent = "South America"
AND year = 2003;

-- country with the smallest population in 
-- 2007
SELECT *
FROM population_years
JOIN countries
ON countries.id = population_years.country_id
WHERE population IS NOT NULL
ORDER BY population ASC
LIMIT 1;

-- Average population in Poland from 2000 to 
-- 2010
SELECT AVG(population)
FROM population_years
JOIN countries
ON countries.id = population_years.country_id
WHERE name = "Poland";

-- Number of countries that has the word "The"
-- in their names
SELECT COUNT(*)
FROM countries
WHERE name LIKE "%The%";

-- the total population of each continent in 
-- 2010
SELECT continent, 
SUM(population) AS "population"
FROM population_years
JOIN countries
ON countries.id = population_years.country_id
WHERE year = 2010
GROUP BY continent
ORDER BY population DESC;