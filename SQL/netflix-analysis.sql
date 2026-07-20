-- FIND TOTAL NUMBERS OF MOVIES
SELECT type,COUNT(*)
FROM netflix
WHERE type='Movie';

-- Movies released after year 2020
SELECT * 
FROM netflix 
WHERE release_year>2020 and type='Movie';

-- HORROR MOVIES	
SELECT *
FROM netflix
WHERE listed_in LIKE '%Horror%'and type='Movie';

-- NUMBER OF TITLES BY COUNTRIES
SELECT country,
COUNT(*) AS total_titles
FROM netflix
GROUP BY country
ORDER BY total_titles DESC;

-- TOP 10 DIRECTORS
SELECT director,
COUNT(*) AS total
FROM netflix
WHERE director IS NOT NULL
GROUP BY director
ORDER BY total DESC
LIMIT 10;

-- NUMBER OF MOVIES VS TV SHOWS
SELECT type,
COUNT(*)
FROM netflix
GROUP BY type;

-- MOST COMMON RATING
SELECT rating,
COUNT(*)
FROM netflix
GROUP BY rating
ORDER BY COUNT(*) DESC;

-- RELEASES EVERY YEAR
SELECT release_year,
COUNT(*)
FROM netflix
GROUP BY release_year
ORDER BY release_year;

-- Top 5 countries with most content
SELECT country,
COUNT(*) total
FROM netflix
WHERE country IS NOT NULL
GROUP BY country
ORDER BY total DESC
LIMIT 5;

-- OLDEST MOVIE 
SELECT *
FROM netflix
ORDER BY release_year
LIMIT 1;

-- TOP MOVIES EACH YEAR
WITH RankedMovies AS (
SELECT
title,
release_year,
ROW_NUMBER() OVER(
PARTITION BY release_year
ORDER BY title
) AS rn
FROM netflix
WHERE type='Movie'
)

SELECT *
FROM RankedMovies
WHERE rn=1;

-- Finding the growth of genre over years
SELECT
    release_year,
    listed_in,
    COUNT(*) AS total_titles
FROM netflix
WHERE release_year >= 2015
GROUP BY release_year, listed_in
ORDER BY release_year, total_titles DESC;

-- Growth surge of Drama
SELECT
    release_year,
    COUNT(*) AS drama_titles
FROM netflix
WHERE listed_in LIKE '%Dramas%'
GROUP BY release_year
ORDER BY release_year;

-- Count Titles by Countries
SELECT
    country,
    COUNT(*) AS total_titles
FROM netflix
WHERE country IS NOT NULL
GROUP BY country
ORDER BY total_titles DESC;

-- Calculate the % of total titles
SELECT
ROUND(
(
SELECT COUNT(*)
FROM netflix
WHERE country LIKE '%United States%'
   OR country LIKE '%Japan%'
)
*100.0/
(SELECT COUNT(*) FROM netflix),
2
) AS percentage;