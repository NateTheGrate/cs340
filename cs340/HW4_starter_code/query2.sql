-- We want to find out how many of each category of film ED CHASE has starred in.

-- So return a table with "category_name" and the count of the "number_of_films" that ED was in that category.

-- Your query should return every category even if ED has been in no films in that category

-- Order by the category name in ascending order.


SELECT c.name AS "category_name", count(fc.film_id) AS "number_of_films"
FROM category c LEFT JOIN (film_category fc JOIN (film_actor fa JOIN actor a ON fa.actor_id = a.actor_id) ON fc.film_id = fa.film_id) ON c.category_id = fc.category_id
WHERE a.first_name = "ED", a.last_name = "CHASE"
ORDER BY c.name ASC;

