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