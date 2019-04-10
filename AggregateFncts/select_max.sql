SELECT
 film_id,
 title
FROM
 test_films
WHERE
 replacement_cost =(
 SELECT
 MAX( replacement_cost )
 FROM
 test_films
 )
ORDER BY
 title;