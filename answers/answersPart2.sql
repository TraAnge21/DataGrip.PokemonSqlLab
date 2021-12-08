PART 2 :

#1) What are all the types of pokemon that a pokemon can have?
SELECT * FROM types;

#
Normal
Water
Grass
Rock
Fire
Ground
Poison
Bug
Electric
Dragon
Steel
Dark
Fighting
Psychic
Ghost
Fairy
Ice
Flying
#

#2) What is the name of the pokemon with id 45?
SELECT * FROM pokemon WHERE id='45' ;
#The name is "Eevee".

#3) How many pokemon are there?
SELECT COUNT(id) FROM pokemons;
There are 656 pokemons.

#4) How many types are there?
SELECT COUNT(id) FROM types;
#There are 18 types.


5) How many pokemons have a secondary type?

SELECT COUNT(secondary_type) FROM pokemons WHERE secondary_type IS NOT NULL;
# There are 316 pokemons that have a secondary type.
