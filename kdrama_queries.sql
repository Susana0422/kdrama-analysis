-- Which genres are most watched?

SELECT 
  genres,
  COUNT(*) AS total
FROM kdrama_analysis.kdrama,
UNNEST(SPLIT(genres, ', ')) AS genres
GROUP BY genres
ORDER BY total DESC
LIMIT 10;

-- Top 10 kdrama with better score
SELECT
  title,
  year,
  score,
  ranked,
  watchers,
  genres
FROM kdrama_analysis.kdrama
WHERE score IS NOT NULL
  AND voters >= 1000   
ORDER BY score DESC
LIMIT 10;


-- More watchers = better score?
SELECT
  CASE
    WHEN watchers >= 100000 THEN '100k+'
    WHEN watchers >= 50000  THEN '50k-100k'
    WHEN watchers >= 10000  THEN '10k-50k'
    ELSE 'Menos de 10k'
  END AS rango_watchers,
  ROUND(AVG(score), 2) AS avg_score,
  COUNT(*) AS total_dramas
FROM kdrama_analysis.kdrama
WHERE score IS NOT NULL AND watchers IS NOT NULL
GROUP BY rango_watchers
ORDER BY avg_score DESC;


--Which platform has the highest-rated dramas?
SELECT
    watch_platforms,
    ROUND(AVG(score), 2) AS avg_score,
    COUNT(*) AS total_dramas
FROM kdrama_analysis.kdrama,
UNNEST(SPLIT(watch_platforms, ', ')) AS watch_platforms
WHERE score IS NOT NULL
GROUP BY watch_platforms
HAVING COUNT(*) >= 10  
ORDER BY avg_score DESC
LIMIT 10;

-- How many dramas are produced per year?
SELECT
    year,
    COUNT(*) AS total_dramas
FROM kdrama_analysis.kdrama
WHERE year IS NOT NULL
GROUP BY year
ORDER BY year DESC;

--Has the average score improved over the years?

SELECT
    year,
    ROUND(AVG(score), 2) AS avg_score,
    COUNT(*) AS total_dramas
FROM kdrama_analysis.kdrama
WHERE year IS NOT NULL AND score IS NOT NULL
GROUP BY year
ORDER BY year DESC;

-- Which genres dominate each year?
SELECT
  year,
  genre,
  COUNT(*) AS total
FROM kdrama_analysis.kdrama,
UNNEST(SPLIT(genres, ', ')) AS genre
WHERE year IS NOT NULL
GROUP BY year, genre
ORDER BY year DESC, total DESC;

-- Which actors appear most often in Kdramas?
SELECT
    actor,
    COUNT(*) AS dramas
FROM kdrama_analysis.kdrama,
UNNEST(SPLIT(`cast`, ', ')) AS actor
WHERE actor IS NOT NULL
AND actor != 'Unknown'
GROUP BY actor
ORDER BY dramas DESC

-- Which director has the best scores?
SELECT
    directors,
    ROUND(AVG(score), 2) AS avg_score,
    COUNT(*) AS total_dramas
FROM kdrama_analysis.kdrama,
UNNEST(SPLIT(directors, ', ')) AS directors
WHERE directors IS NOT NULL
AND directors != 'Unknown'
GROUP BY directors
HAVING COUNT(*) >= 3
ORDER BY avg_score DESC
