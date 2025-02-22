-- People
INSERT INTO person (name, co, person_id) VALUES ('Stanley Kubrick', 'USA', 1);
INSERT INTO person (name, dob, person_id) VALUES ('Keir Dullea', TO_DATE('30/05/1936', 'DD/MM/YYYY'), 2);
INSERT INTO person (name, email, person_id) VALUES ('Arthur C Clarke', 'arthur@clarke.com', 3);
INSERT INTO person (name, co, email, person_id) VALUES ('George Lucas', 'USA', 'george@email.com', 4);
INSERT INTO person (name, dob, person_id) VALUES ('Mark Hamill', TO_DATE('25/09/1951', 'DD/MM/YYYY'), 5);
INSERT INTO person (name, dob, person_id) VALUES ('Harrison Ford', TO_DATE('13/07/1942', 'DD/MM/YYYY'), 6);
INSERT INTO person (name, co, person_id) VALUES ('Robert Mulligan', 'USA', 7);
INSERT INTO person (name, dob, person_id) VALUES ('Gregory Peck', TO_DATE('05/04/1916', 'DD/MM/YYYY'), 8);
INSERT INTO person (name, email, person_id) VALUES ('Harper Lee', 'harper@lee.com', 9);
INSERT INTO person (name, co, email, person_id) VALUES ('James Cameron', 'Canada', 'james@cameron.com', 10);
INSERT INTO person (name, dob, person_id) VALUES ('Leonardo DiCaprio', TO_DATE('11/11/1974', 'DD/MM/YYYY'), 11);
INSERT INTO person (name, dob, person_id) VALUES ('Kate Winslet', TO_DATE('05/10/1975', 'DD/MM/YYYY'), 12);
INSERT INTO person (name, co, person_id) VALUES ('David Lean', 'UK', 13);
INSERT INTO person (name, dob, person_id) VALUES ('Julie Christie', TO_DATE('14/04/1940', 'DD/MM/YYYY'), 14);
INSERT INTO person (name, email, person_id) VALUES ('Boris Pasternak', 'boris@boris.com', 15);
INSERT INTO person (name, dob, person_id) VALUES ('Omar Sharif', TO_DATE('10/04/1932', 'DD/MM/YYYY'), 16);
INSERT INTO person (name, co, person_id) VALUES ('Anthony Mann', 'USA', 17);
INSERT INTO person (name, dob, person_id) VALUES ('Charlton Heston', TO_DATE('04/10/1923', 'DD/MM/YYYY'), 18);
INSERT INTO person (name, email, person_id) VALUES ('Frederick Frank', 'fred@frank.com', 19);
INSERT INTO person (name, dob, person_id) VALUES ('Sophia Loren', TO_DATE('20/09/1934', 'DD/MM/YYYY'), 20);
INSERT INTO person (name, co, email, person_id) VALUES ('Theodoros Angelopoulos', 'Greece', 'theo@angelopoulos.com', 21);
INSERT INTO person (name, dob, person_id) VALUES ('Manos Katrakis', TO_DATE('14/08/1908', 'DD/MM/YYYY'), 22);
INSERT INTO person (name, co, person_id) VALUES ('Paul Verhoeven', 'Netherlands', 23);
INSERT INTO person (name, dob, person_id) VALUES ('Rutger Hauer', TO_DATE('23/01/1944', 'DD/MM/YYYY'), 24);
INSERT INTO person (name, email, person_id) VALUES ('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com', 25);
INSERT INTO person (name, co, email, person_id) VALUES ('Krzysztof Kieslowski', 'Poland', 'email@email.com', 26);
INSERT INTO person (name, dob, person_id) VALUES ('Juliette Binoche', TO_DATE('09/03/1964', 'DD/MM/YYYY'), 27);
INSERT INTO person (name, dob, person_id) VALUES ('BenoÃ®t RÃ©gent', TO_DATE('19/08/1943', 'DD/MM/YYYY'), 28);
INSERT INTO person (name, co, person_id) VALUES ('Jean-Paul Rappeneau', 'France', 29);
INSERT INTO person (name, dob, person_id) VALUES ('Gerard Depardieu', TO_DATE('27/12/1948', 'DD/MM/YYYY'), 30);
INSERT INTO person (name, email, person_id) VALUES ('Edmond Rostand', 'edmond@rostand.com', 31);
INSERT INTO person (name, dob, person_id) VALUES ('Anne Brochet', TO_DATE('22/11/1966', 'DD/MM/YYYY'), 32);
INSERT INTO person (name, co, email, person_id) VALUES ('Christopher Nolan', 'USA', 'chris@nolan.com', 33);
INSERT INTO person (name, dob, person_id) VALUES ('Matthew McConaughey', TO_DATE('04/11/1969', 'DD/MM/YYYY'), 34);
INSERT INTO person (name, dob, person_id) VALUES ('Anne Hathaway', TO_DATE('12/11/1982', 'DD/MM/YYYY'), 35);
INSERT INTO person (name, dob, person_id) VALUES ('Joseph Gordon-Levitt', TO_DATE('17/02/1981', 'DD/MM/YYYY'), 36);

-- Directors
INSERT INTO director (director_id, person_id) VALUES (1, 1);
INSERT INTO director (director_id, person_id) VALUES (2, 4);
INSERT INTO director (director_id, person_id) VALUES (3, 7);
INSERT INTO director (director_id, person_id) VALUES (4, 10);
INSERT INTO director (director_id, person_id) VALUES (5, 13);
INSERT INTO director (director_id, person_id) VALUES (6, 17);
INSERT INTO director (director_id, person_id) VALUES (7, 21);
INSERT INTO director (director_id, person_id) VALUES (8, 23);
INSERT INTO director (director_id, person_id) VALUES (9, 26);
INSERT INTO director (director_id, person_id) VALUES (10, 29);
INSERT INTO director (director_id, person_id) VALUES (11, 33);

-- Writers
INSERT INTO writer (writer_id, person_id) VALUES (1, 3);
INSERT INTO writer (writer_id, person_id) VALUES (2, 4);
INSERT INTO writer (writer_id, person_id) VALUES (3, 9);
INSERT INTO writer (writer_id, person_id) VALUES (4, 10);
INSERT INTO writer (writer_id, person_id) VALUES (5, 15);
INSERT INTO writer (writer_id, person_id) VALUES (6, 19);
INSERT INTO writer (writer_id, person_id) VALUES (7, 21);
INSERT INTO writer (writer_id, person_id) VALUES (8, 25);
INSERT INTO writer (writer_id, person_id) VALUES (9, 26);
INSERT INTO writer (writer_id, person_id) VALUES (10, 31);
INSERT INTO writer (writer_id, person_id) VALUES (11, 33);

-- Actors
INSERT INTO actor (actor_id, person_id) VALUES (1, 2);
INSERT INTO actor (actor_id, person_id) VALUES (2, 5);
INSERT INTO actor (actor_id, person_id) VALUES (3, 6);
INSERT INTO actor (actor_id, person_id) VALUES (4, 8);
INSERT INTO actor (actor_id, person_id) VALUES (5, 11);
INSERT INTO actor (actor_id, person_id) VALUES (6, 12);
INSERT INTO actor (actor_id, person_id) VALUES (7, 14);
INSERT INTO actor (actor_id, person_id) VALUES (8, 16);
INSERT INTO actor (actor_id, person_id) VALUES (9, 18);
INSERT INTO actor (actor_id, person_id) VALUES (10, 20);
INSERT INTO actor (actor_id, person_id) VALUES (11, 22);
INSERT INTO actor (actor_id, person_id) VALUES (12, 24);
INSERT INTO actor (actor_id, person_id) VALUES (13, 27);
INSERT INTO actor (actor_id, person_id) VALUES (14, 28);
INSERT INTO actor (actor_id, person_id) VALUES (15, 30);
INSERT INTO actor (actor_id, person_id) VALUES (16, 32);
INSERT INTO actor (actor_id, person_id) VALUES (17, 34);
INSERT INTO actor (actor_id, person_id) VALUES (18, 35);
INSERT INTO actor (actor_id, person_id) VALUES (19, 36);

-- Films
INSERT INTO film (film_id, title, release_year, genre, score, director_id, writer_id) VALUES (1, '2001: A Space Odyssey', 1968, 'Science Fiction', 10, 1, 1);
INSERT INTO film (film_id, title, release_year, genre, score, director_id, writer_id) VALUES (2, 'Star Wars: A New Hope', 1977, 'Science Fiction', 7, 2, 2);
INSERT INTO film (film_id, title, release_year, genre, score, director_id, writer_id) VALUES (3, 'To Kill A Mockingbird', 1962, 'Drama', 10, 3, 3);
INSERT INTO film (film_id, title, release_year, genre, score, director_id, writer_id) VALUES (4, 'Titanic', 1997, 'Romance', 5, 4, 4);
INSERT INTO film (film_id, title, release_year, genre, score, director_id, writer_id) VALUES (5, 'Dr Zhivago', 1965, 'Historical', 8, 5, 5);
INSERT INTO film (film_id, title, release_year, genre, score, director_id, writer_id) VALUES (6, 'El Cid', 1961, 'Historical', 6, 6, 6);
INSERT INTO film (film_id, title, release_year, genre, score, director_id, writer_id) VALUES (7, 'Voyage to Cythera', 1984, 'Drama', 8, 7, 7);
INSERT INTO film (film_id, title, release_year, genre, score, director_id, writer_id) VALUES (8, 'Soldier of Orange', 1977, 'Thriller', 8, 8, 8);
INSERT INTO film (film_id, title, release_year, genre, score, director_id, writer_id) VALUES (9, 'Three Colours: Blue', 1993, 'Drama', 8, 9, 9);
INSERT INTO film (film_id, title, release_year, genre, score, director_id, writer_id) VALUES (10, 'Cyrano de Bergerac', 1990, 'Historical', 9, 10, 10);
INSERT INTO film (film_id, title, release_year, genre, score, director_id, writer_id) VALUES (11, 'Interstellar', 2014, 'Science Fiction', 9, 11, 11);
INSERT INTO film (film_id, title, release_year, genre, score, director_id, writer_id) VALUES (12, 'Inception', 2010, 'Thriller', 8, 11, 11);

-- Film Actors
INSERT INTO film_actor (film_id, actor_id, is_star) VALUES (1, 1, True);
INSERT INTO film_actor (film_id, actor_id, is_star) VALUES (2, 2, True);
INSERT INTO film_actor (film_id, actor_id, is_star) VALUES (2, 3, False);
INSERT INTO film_actor (film_id, actor_id, is_star) VALUES (3, 4, True);
INSERT INTO film_actor (film_id, actor_id, is_star) VALUES (4, 5, True);
INSERT INTO film_actor (film_id, actor_id, is_star) VALUES (4, 6, False);
INSERT INTO film_actor (film_id, actor_id, is_star) VALUES (5, 7, True);
INSERT INTO film_actor (film_id, actor_id, is_star) VALUES (5, 8, False);
INSERT INTO film_actor (film_id, actor_id, is_star) VALUES (6, 9, True);
INSERT INTO film_actor (film_id, actor_id, is_star) VALUES (6, 10, False);
INSERT INTO film_actor (film_id, actor_id, is_star) VALUES (7, 11, True);
INSERT INTO film_actor (film_id, actor_id, is_star) VALUES (8, 12, True);
INSERT INTO film_actor (film_id, actor_id, is_star) VALUES (9, 13, True);
INSERT INTO film_actor (film_id, actor_id, is_star) VALUES (9, 14, False);
INSERT INTO film_actor (film_id, actor_id, is_star) VALUES (10, 15, True);
INSERT INTO film_actor (film_id, actor_id, is_star) VALUES (10, 16, False);
INSERT INTO film_actor (film_id, actor_id, is_star) VALUES (11, 17, True);
INSERT INTO film_actor (film_id, actor_id, is_star) VALUES (11, 18, False);
INSERT INTO film_actor (film_id, actor_id, is_star) VALUES (12, 5, True);
INSERT INTO film_actor (film_id, actor_id, is_star) VALUES (12, 19, False);