-- Core
SELECT title, person.name AS director_name
FROM film
    INNER JOIN director ON film.director_id = director.director_id
    LEFT JOIN person ON director.person_id = person.person_id;

SELECT
    title,
    director_person.name AS director_name,
    actor_person.name AS star_name
FROM
    film
    INNER JOIN director ON film.director_id = director.director_id
    INNER JOIN person AS director_person ON director.person_id = director_person.person_id
    INNER JOIN film_actor ON film.film_id = film_actor.film_id
    INNER JOIN actor ON film_actor.actor_id = actor.actor_id
    INNER JOIN person AS actor_person ON actor.person_id = actor_person.person_id;

SELECT title
FROM film
    INNER JOIN director ON film.director_id = director.director_id
    INNER JOIN person ON director.person_id = person.person_id
WHERE
    person.co = 'USA';

SELECT film.*
FROM
    film
    INNER JOIN director ON film.director_id = director.director_id
    INNER JOIN person AS director_person ON director.person_id = director_person.person_id
    INNER JOIN writer ON film.writer_id = writer.writer_id
    INNER JOIN person AS writer_person ON writer.person_id = writer_person.person_id
WHERE
    director_person.name = writer_person.name;

SELECT title, director_person.name AS director_name
FROM
    film
    INNER JOIN director ON film.director_id = director.director_id
    INNER JOIN person AS director_person ON director.person_id = director_person.person_id
WHERE
    film.score >= 8;

-- Extra
SELECT title, actor_person.name AS star_name, actor_person.dob AS star_dob
FROM
    film
    INNER JOIN film_actor ON film_actor.film_id = film.film_id
    INNER JOIN actor ON film_actor.actor_id = actor.actor_id
    INNER JOIN person AS actor_person ON actor.person_id = actor_person.person_id
WHERE
    actor_person.dob < TO_DATE('14/05/1940', 'DD/MM/YYYY');

-- Select films and the people in it with a title that contains with 'a '
SELECT film.title, director_person.name AS director, writer_person.name as writer, actor_person.name as actor
FROM
    film
    INNER JOIN director ON film.director_id = director.director_id
    INNER JOIN person AS director_person ON director.person_id = director_person.person_id
    INNER JOIN writer ON film.writer_id = writer.writer_id
    INNER JOIN person AS writer_person ON writer.person_id = writer_person.person_id
    INNER JOIN film_actor ON film_actor.film_id = film.film_id
    INNER JOIN actor ON film_actor.actor_id = actor.actor_id
    INNER JOIN person AS actor_person ON actor.person_id = actor_person.person_id
WHERE
    UPPER(film.title) LIKE '%A %';

-- Select actors who have starred in films with a score of 8 or higher
SELECT actor_person.name AS actor_name
FROM actor
    INNER JOIN person AS actor_person ON actor.person_id = actor_person.person_id
    INNER JOIN film_actor ON film_actor.actor_id = actor.actor_id
    INNER JOIN film ON film_actor.film_id = film.film_id
    WHERE film.score >= 8