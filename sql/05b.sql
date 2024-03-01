/*
 * This problem is the same as 05.sql,
 * but instead of using the NOT IN operator, you are to use a LEFT JOIN.
 */

SELECT actor.last_name, actor.first_name
FROM actor
LEFT JOIN customer using (last_name, first_name)
WHERE customer.customer_id is NULL
ORDER BY last_name, first_name;
