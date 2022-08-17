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