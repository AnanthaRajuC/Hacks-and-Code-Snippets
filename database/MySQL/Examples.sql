SELECT * FROM sakila.actor;

SELECT COUNT(*) FROM sakila.actor;

SELECT first_name FROM sakila.actor;

SELECT CONCAT(first_name,' ',last_name) AS full_name FROM sakila.actor;

SELECT DISTINCT(first_name) FROM sakila.actor;

SELECT COUNT(DISTINCT(first_name)) FROM sakila.actor;

SELECT actor_id, first_name,
CASE
	WHEN first_name = 'NICK' THEN 'first name is nick'
    ELSE "first name not nick"
END    
FROM sakila.actor;