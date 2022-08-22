select * from animals where name like '%mon';
select date_of_birth from animals where name ='Agumon' or name = 'Pikachu';
select * from animals where neutered = True;
select * from animals where not name = 'Gabumon';
select name, escape_attemps from animals where weight_kg >10.5;
select name from animals where neutered = True and escape_attemps < 3;
select * from animals where weight_kg between 10.4 and 17.3;
select name from animals where  extract(year from date_of_birth) between 2016 and 2019;

 select count(*) from animals;
  select count(*) from animals where escape_attemps = 0;
  select avg(weight_kg) from animals;
  select count(neutered) from animals group by neutered;
  select Max(weight_kg), Min(weight_kg) from animals group by species;
   select avg(escape_attemps) from animals where extract(year from date_of_birth) between 1990 and 2000 group by species;
  /*What animals belong to Melody Pond?*/
   select a.name from animals a join owners o on o.id = a.owner_id where o.full_name = 'Melody Pond';
   /*List of all animals that are pokemon (their type is Pokemon).*/
   select * from animals a join species s on s.id = a.species_id where s.name = 'Pokemon';
   /*List all owners and their animals, remember to include those that don't own any animal.*/
    select o.full_name, a.name from animals a join owners o on o.id = a.owner_id where o.id = owner_id;
    /*How many animals are there per species?*/
   select count(a.name)from animals a join species s on s.id = species_id group by s.id;
   /*List all Digimon owned by Jennifer Orwell.*/
   select a.name, s.name, o.full_name from animals a join species s on s.id =a.species_id join owners o on o.id = a.owner_id where o.full_name = 'Jennifer Orwell' and s.name = 'Digimon';
   /*List all animals owned by Dean Winchester that haven't tried to escape.*/
   select a.name, a.escape_attemps,o.full_name from animals a join owners o on o.id = a.owner_id where a.escape_attemps = 0 and o.full_name = 'Dean Winchester';
   /*Who owns the most animals?*/
   select count(a.name),o.full_name from animals a join owners o on o.id = a.owner_id group by o.full_name;

select a.name, v.date_of_visit FROM animals a
INNER JOIN visits v ON a.id = animal_id
INNER JOIN vets ON vets.id = vet_id WHERE vets.name = 'William Tatcher' ORDER BY date_of_visit DESC; 

-- How many different animals did Stephanie Mendez see?
SELECT COUNT(*) FROM animals a
INNER JOIN visits ON a.id = animal_id
INNER JOIN vets ON vets.id = vet_id WHERE vets.name = 'Stephanie Mendez';

-- List all vets and their specialists, including vets with no specialists
SELECT vets.name, species.name FROM vets
LEFT JOIN specializations s ON vets.id = s.vet_id
INNER JOIN species ON species.id = s.species_id;

-- List all animals that visited Stephanie Mendez between April 1st and August 30th, 2020
SELECT a.name FROM animals a
INNER JOIN visits ON a.id = animal_id
INNER JOIN vets ON vets.id = vet_id WHERE vets.name = 'Stephanie Mendez' AND date_of_visit BETWEEN '2020-04-01' AND '2020-08-30';

-- What animals has the most visits
SELECT a.name, COUNT(vets.id) FROM animals a
INNER JOIN visits v ON a.id = animal_id
INNER JOIN vets ON vets.id = vet_id GROUP BY a.name ORDER BY count DESC;

-- Who was Maisy Smith's first visit?
SELECT a.name, visits.date_of_visit FROM animals a
INNER JOIN visits ON a.id = animal_id
INNER JOIN vets ON vets.id = vet_id WHERE vets.name = 'Maisy Smith' ORDER BY date_of_visit ASC; 

-- Details for most recent visit: animal information, vet information, and date of visit
SELECT a.name AS Animal, a.weight_kg, a.date_of_birth, a.escape_attemps, vets.name AS Vets_name, visits.date_of_visit FROM animals a
INNER JOIN visits ON a.id = animal_id
INNER JOIN vets ON vets.id = vet_id ORDER BY date_of_visit DESC; 

-- How many visits were with a vet that did not specialize in that animal's species
SELECT COUNT(*) FROM animals a
INNER JOIN visits ON a.id = animal_id
INNER JOIN vets v ON v.id = vet_id WHERE v.id = 2; 

-- What specialty should Maisy Smith consider getting? Look for the species she gets the most
SELECT species.name, COUNT(*) FROM species
INNER JOIN animals ON species.id = animals.species_id
INNER JOIN visits ON animals.id = animal_id
INNER JOIN vets v ON v.id = vet_id WHERE v.id = 2 GROUP BY species.name ORDER BY count DESC;


EXPLAIN ANALYZE SELECT COUNT(*) FROM visits where animal_id = 4;
EXPLAIN ANALYZE SELECT * FROM visits where vet_id = 2;
EXPLAIN ANALYZE SELECT * FROM owners where email = 'owner_18327@mail.com';