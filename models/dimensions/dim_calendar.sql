SELECT
    DISTINCT DATE(pub_date) AS date,
    EXTRACT(YEAR FROM pub_date) AS year,
    EXTRACT(MONTH FROM pub_date) AS month,
    EXTRACT(DAY FROM pub_date) AS day,
    EXTRACT(DAYOFWEEK FROM pub_date) AS day_of_week,
    EXTRACT(WEEK FROM pub_date) AS week,
    EXTRACT(QUARTER FROM pub_date) AS quarter,
    CASE WHEN EXTRACT(MONTH FROM pub_date) IN (1, 2, 12) THEN 'Winter'
         WHEN EXTRACT(MONTH FROM pub_date) IN (3, 4, 5) THEN 'Spring'
         WHEN EXTRACT(MONTH FROM pub_date) IN (6, 7, 8) THEN 'Summer'
         ELSE 'Fall' END AS season
FROM
    `crack-will-422608-j1.GroupProject.article`
ORDER BY
    date


