PART 3

#1) What is each pokemon's primary type?
SELECT p.name, t.name FROM pokemons p JOIN pokemon.types t ON p.primary_type=t.id;

# it reaches 656th pokemon.

#2) What is Rufflet's secondary type?
SELECT p.name, t.name FROM POKEMONS p JOIN types t ON p.secondary_type=t.id WHERE p.name = 'Rufflet';

#+---------+--------+
| name    | name   |
+---------+--------+
| Rufflet | Flying |
+---------+--------+


#3) What are the names of the pokemon that belong to the trainer with trainerID 303 ?
SELECT p.name, t.trainerID FROM pokemon_trainer t JOIN pokemons p ON t.pokemon_id = p.id  WHERE trainerID ='303';

#+-----------+-----------+
| name      | trainerID |
+-----------+-----------+
| Wailord   |       303 |
| Vileplume |       303 |
+-----------+-----------+

#4) How many pokemon have a secondary type Poison ?
SELECT COUNT(secondary_type) FROM pokemons WHERE secondary_type = ( SELECT id FROM types WHERE name ='Poison');
+-----------------------+
| COUNT(secondary_type) |
+-----------------------+
|                    31 |
+-----------------------+

#5) What are all the primary types and how many pokemon have that type?
SELECT count(*) as "count", t.name
    -> from types t
    -> join pokemons p
    -> on t.id = p.primary_type
    -> group by t.name;

#There are 18 pokemons that have that type.

#6)How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer
SELECT COUNT(*) as "count", p.trainerID FROM pokemon_trainer p WHERE p.pokelevel = 100 GROUP BY p.trainerID;
#We have 194 pokemon at level 100.



#7)How many pokemon only belong to one trainer and no other?
SELECT COUNT(trainerID), pt.pokemon_id
    -> FROM pokemon_trainer pt
    -> JOIN pokemons p
    -> ON p.id = pt.pokemon_id
    -> GROUP BY pt.pokemon_id
    -> HAVING COUNT(trainerID) = 1;

#There are 13 pokemons.
