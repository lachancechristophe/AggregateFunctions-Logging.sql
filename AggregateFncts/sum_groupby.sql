SELECT
 rating,
 SUM( rental_duration )
FROM
 test_films
GROUP BY
 rating
ORDER BY
 rating;