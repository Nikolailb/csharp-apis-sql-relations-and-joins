import csv
from collections import defaultdict

values = []
with open("values.csv", "r") as file:
    reader = csv.reader(file)
    for row in reader:
        values.append(row)
values = values[1:]

def get_people():
    people = defaultdict(dict)
    for row in values:
        people[row[2]]["co"] = f"'{row[3]}'"
        people[row[4]]["dob"] = f"TO_DATE('{row[5]}', 'DD/MM/YYYY')"
        people[row[6]]["email"] = f"'{row[7]}'"
    
    result = ""
    running_id = 1
    for key, value in people.items():
        value["person_id"] = running_id
        running_id += 1
        result += f"INSERT INTO person (name, {', '.join(value.keys())}) VALUES ('{key}', {', '.join([str(a) for a in value.values()])});\n"
    return people, result

people, people_sql = get_people()

def get_director(people):
    writers = defaultdict(dict)
    result = ""
    running_id = 1
    for row in values:
        writers[row[2]] = {
            "director_id": running_id,
            "person_id": people[row[2]]["person_id"]
        }
        result += f"INSERT INTO director (director_id, person_id) VALUES ({running_id}, {people[row[2]]['person_id']});\n"
        running_id += 1
    return writers, result

director, director_sql = get_director(people)

def get_writer(people):
    writers = defaultdict(dict)
    result = ""
    running_id = 1
    for row in values:
        writers[row[6]] = {
            "writer_id": running_id,
            "person_id": people[row[6]]["person_id"]
        }
        result += f"INSERT INTO writer (writer_id, person_id) VALUES ({running_id}, {people[row[6]]['person_id']});\n"
        running_id += 1
    return writers, result

writers, writers_sql = get_writer(people)

def get_actor(people):
    actors = defaultdict(dict)
    result = ""
    running_id = 1
    for row in values:
        actors[row[4]] = {
            "actor_id": running_id,
            "person_id": people[row[4]]["person_id"]
        }
        result += f"INSERT INTO actor (actor_id, person_id) VALUES ({running_id}, {people[row[4]]['person_id']});\n"
        running_id += 1
    return actors, result

actors, actors_sql = get_actor(people)

def get_film(directors, writers):
    films = defaultdict(dict)
    result = ""
    running_id = 1
    for row in values:
        films[row[1]] = {
            "film_id": running_id,
            "title": f"'{row[1]}'",
            "release_year": row[8],
            "genre": f"'{row[9]}'",
            "score": row[10],
            "director_id": directors[row[2]]["director_id"],
            "writer_id": writers[row[6]]["writer_id"]
        }
        running_id += 1
    for key, value in films.items():
        result += f"INSERT INTO film ({', '.join(value.keys())}) VALUES ({', '.join([str(a) for a in value.values()])});\n"
    return films, result

film, film_sql = get_film(director, writers)

def get_film_actor(films, actors):
    film_actor = defaultdict(dict)
    result = ""
    for row in values:
        film_actor[f"{row[1]}_{row[4]}"] = {
            "film_id": films[row[1]]["film_id"],
            "actor_id": actors[row[4]]["actor_id"]
        }
    for key, value in film_actor.items():
        result += f"INSERT INTO film_actor ({', '.join(value.keys())}) VALUES ({', '.join([str(a) for a in value.values()])});\n"
    return films, result

film_actor, film_actor_sql = get_film_actor(film, actors)

print(film_actor_sql)