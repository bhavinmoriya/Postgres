-- we count the number of payment done on monday
select count(*)
from payment
where extract(dow from payment_date)= 5

-- Math operators
select round(rental_rate/replacement_cost,4)*100 as percent from film
 
-- String methods
select lower(left(first_name,1)) || lower(last_name) || '@gmail.com' as custom_email from customer

select title, rental_rate from film
where film.rental_rate > (select avg(rental_rate) from film)

SELECT TITLE, FILM_ID FROM FILM
WHERE FILM_ID IN
(select INVENTORY.FILM_ID FROM INVENTORY
INNER JOIN RENTAL
ON INVENTORY.inventory_id = RENTAL.inventory_id
WHERE RETURN_DATE BETWEEN '2005-05-29' AND '2005-05-30')
ORDER BY TITLE

SELECT FIRST_NAME, last_name FROM CUSTOMER AS C
WHERE EXISTS
(SELECT * FROM PAYMENT AS p
WHERE p.CUSTOMER_ID = c.CUSTOMER_ID
AND p.AMOUNT > 11)

SELECT FIRST_NAME, last_name FROM CUSTOMER AS C
WHERE NOT EXISTS
(SELECT * FROM PAYMENT AS p
WHERE p.CUSTOMER_ID = c.CUSTOMER_ID
AND p.AMOUNT > 11)

SELECT F1.TITLE, F2.TITLE, F1.LENGTH FROM FILM AS F1
JOIN FILM AS F2
ON F1.FILM_ID != F2.FILM_ID
AND F1.LENGTH = F2.LENGTH

SELECT F1.TITLE, F2.TITLE, F1.rental_rate FROM FILM AS F1
JOIN FILM AS F2
ON F1.FILM_ID != F2.FILM_ID
AND F1.rental_rate = F2.rental_rate

