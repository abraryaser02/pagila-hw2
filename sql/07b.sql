/*
 * This problem is the same as 07.sql,
 * but instead of using the NOT IN operator, you are to use a LEFT JOIN.
 */

SELECT DISTINCT(title)
FROM film
JOIN inventory using (film_id)
LEFT JOIN (
    SELECT film_id
    FROM inventory
    JOIN rental using (inventory_id)
    JOIN customer using (customer_id)
    JOIN address using (address_id)
    JOIN city using (city_id)
    JOIN country using (country_id)
    WHERE country = 'United States'
) t using (film_id)
WHERE t.film_id IS NULL
ORDER BY title;
