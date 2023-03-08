-- select all actors from table --
SELECT * FROM actors;

-- find the actors with first name john --
SELECT * FROM actors WHERE first_name = John;

-- All actors with surname neeson --
SELECT * FROM actors WHERE last_name = Neeson;

-- Actors who's id's are divisible by 10 --
SELECT * FROM actors WHERE actor_id % 10 = 0;

-- Description of the movie with ID of 100 --
SELECT description FROM films WHERE film_id = 100;

-- Every movie with rating r --
SELECT * FROM films WHERE rating = R;

-- find 10 shortes movies -- 
SELECT * FROM films
ORDER BY length ASC
LIMIT 10;

-- now return only the movie titles -- 
SELECT 'title' FROM films
ORDER BY length ASC
LIMIT 10;

-- Find all the movies with deleted scenes -- 

SELECT * FROM film
WEHERE special_features LIKE '%Deleted Scenes%';

-- Answer - 503 

-- how many distinct countries are there -- 

SELECT count(distinct country) FROM country;

-- Answer - 109

-- what are the names of all the languages in the database (sorted alphabetically) --
SELECT name FROM language ORDER BY name;

-- Answer :
English
French
German
Italian
Japanese
Mandarin --

-- which actor has appeared in the most films --
select actor_id, COUNT(*) FROM film_actor group by actor_id order by count(*) DESC LIMIT 1;
SELECT last_name FROM actor WHERE actor_id = 42;
-- Answer: Tom Miranda --

-- What is the average run time of films in the database --
select 
avg(length) 
from
film
-- Answer : '115.2720'--

-- what is the average running time of films by category--
select category, avg(length) from film_list 
group by category;

-- Answer : 
Documentary	108.7500
Horror	112.4821
Family	114.7826
Foreign	121.6986
Comedy	115.8276
Sports	127.5068
Music	113.6471
Classics	111.6667
Animation	111.0152
Action	111.6094
New	111.1270
Sci-Fi	108.1967
Drama	119.8852
Travel	113.3750
Games	127.8361
Children	109.8000

-- how many movies have robots in them? --
select 
*
from
film
WHERE
description like '%robot%';

-- Answer = 77 --

-- Find the movies with the longest run time --
SELECT * FROM film 
ORDER BY length
LIMIT 10;

'141', 'CHICAGO NORTH', 'A Fateful Yarn of a Mad Cow And a Waitress who must Battle a Student in California', 2006, '1', NULL, '6', '4.99', '185', '11.99', 'PG-13', 'Deleted Scenes,Behind the Scenes', '2006-02-15 05:03:42'
'182', 'CONTROL ANTHEM', 'A Fateful Documentary of a Robot And a Student who must Battle a Cat in A Monastery', 2006, '1', NULL, '7', '4.99', '185', '9.99', 'G', 'Commentaries', '2006-02-15 05:03:42'
'212', 'DARN FORRESTER', 'A Fateful Story of a A Shark And a Explorer who must Succumb a Technical Writer in A Jet Boat', 2006, '1', NULL, '7', '4.99', '185', '14.99', 'G', 'Deleted Scenes', '2006-02-15 05:03:42'
'349', 'GANGS PRIDE', 'A Taut Character Study of a Woman And a A Shark who must Confront a Frisbee in Berlin', 2006, '1', NULL, '4', '2.99', '185', '27.99', 'PG-13', 'Behind the Scenes', '2006-02-15 05:03:42'
'426', 'HOME PITY', 'A Touching Panorama of a Man And a Secret Agent who must Challenge a Teacher in A MySQL Convention', 2006, '1', NULL, '7', '4.99', '185', '15.99', 'R', 'Trailers,Commentaries,Behind the Scenes', '2006-02-15 05:03:42'
'609', 'MUSCLE BRIGHT', 'A Stunning Panorama of a Sumo Wrestler And a Husband who must Redeem a Madman in Ancient India', 2006, '1', NULL, '7', '2.99', '185', '23.99', 'G', 'Deleted Scenes', '2006-02-15 05:03:42'
'690', 'POND SEATTLE', 'A Stunning Drama of a Teacher And a Boat who must Battle a Feminist in Ancient China', 2006, '1', NULL, '7', '2.99', '185', '25.99', 'PG-13', 'Trailers,Commentaries,Behind the Scenes', '2006-02-15 05:03:42'
'817', 'SOLDIERS EVOLUTION', 'A Lacklusture Panorama of a A Shark And a Pioneer who must Confront a Student in The First Manned Space Station', 2006, '1', NULL, '7', '4.99', '185', '27.99', 'R', 'Trailers,Commentaries,Deleted Scenes,Behind the Scenes', '2006-02-15 05:03:42'
'872', 'SWEET BROTHERHOOD', 'A Unbelieveable Epistle of a Sumo Wrestler And a Hunter who must Chase a Forensic Psychologist in A Baloon', 2006, '1', NULL, '3', '2.99', '185', '27.99', 'R', 'Deleted Scenes', '2006-02-15 05:03:42'
'991', 'WORST BANGER', 'A Thrilling Drama of a Madman And a Dentist who must Conquer a Boy in The Outback', 2006, '1', NULL, '4', '2.99', '185', '26.99', 'PG', 'Deleted Scenes,Behind the Scenes', '2006-02-15 05:03:42'

-- count how many movies were released in 2010 --
select 
*
from
film
WHERE
release_year = 2010;

-- Answer = 0 --

-- which last names are not repeated --
SELECT count(distinct last_name) FROM actor;

-- Answer: 121 --
