insert into animals (name, date_of_birth, weight_kg, neutered, escape_attemps) values('Agumon', '2020-02-03', 10.23, True, 0);
insert into animals (name, date_of_birth, weight_kg, neutered, escape_attemps) values('Gabumon', '2018-11-15', 8, True,2);
insert into animals (name, date_of_birth, weight_kg, neutered, escape_attemps) values('Pikachu', '2021-01-07', 15.04, False,1);
insert into animals (name, date_of_birth, weight_kg, neutered, escape_attemps) values('Devimon', '2017-05-12', 11, True,5);
insert into animals (name, date_of_birth, weight_kg, neutered, escape_attemps) values('Charmanders', '2020-02-20', 11, False,0);
insert into animals (name, date_of_birth, weight_kg, neutered, escape_attemps) values('Plantmon', '2021-11-15', 5.7, True,2);
insert into animals (name, date_of_birth, weight_kg, neutered, escape_attemps) values('Squirtle', '1993-04-15',12.13, False,3);
insert into animals (name, date_of_birth, weight_kg, neutered, escape_attemps) values('Angemon', '2005-12-06',45, True,1);
insert into animals (name, date_of_birth, weight_kg, neutered, escape_attemps) values('Borman', '2005-06-07',20.4, True,7);
insert into animals (name, date_of_birth, weight_kg, neutered, escape_attemps) values('Blossom', '1998-10-13','17', True,3);
insert into animals (name, date_of_birth, weight_kg, neutered, escape_attemps) values('Ditto', '2022-05-14','22', True,4);

insert into owners(full_name, age) values('Sam Smith', 34),('Jennifer Orwell', 19),('Bob', 45), ('Melody Pond', 77), ('Dean Winchester', 14), ('Jodie Whittaker', 38);
insert into species(name) values('Pokemon'),('Digimon');
 update  animals set species_id = 1 where name like '%mon';
 update animals set species_id = 2 where species_id = 1;
 update animals set species_id = 1 where species_id is null;
 update animals set owner_id =1 where name = 'Agumon';
 update animals set owner_id = 2 where name ='Gabumon';
 update animals set owner_id = 2 where name ='Pikachu';
 update animals set owner_id =3 where name ='Devimon';
 update animals set owner_id =3 where name ='Plantmon';
 update animals set owner_id =4 where name ='Charmanders';
  update animals set owner_id =4 where name ='Squirtle';
   update animals set owner_id =4 where name ='Blossom';
   update animals set owner_id =5 where name ='Angemon';
    update animals set owner_id =5 where name ='Borman';

INSERT INTO specializations(species_id, vet_id)
VALUES(1, 1),
      (2, 3),
      (1, 3),
      (2, 4);

INSERT INTO visits (animal_id, vet_id, date_of_visit)
VALUES(1, 1, '2020-05-24'),
      (1, 3, '2020-07-22'),
      (2, 4, '2021-02-02'),
      (3, 2, '2020-01-05'),
      (3, 2, '2020-03-08'),
      (3, 2, '2020-05-14'),
      (4, 3, '2021-05-04'),
      (5, 4, '2021-02-24'),
      (6, 2, '2019-12-21'),
      (6, 1, '2020-08-10'),
      (6, 2, '2021-04-07'),
      (8, 3, '2019-09-29'),
      (10, 2, '2019-01-24'),
      (10, 2, '2019-05-15'),
      (10, 2, '2020-02-27'),
      (10, 2, '2020-08-03'),
      (11, 3, '2020-05-24'),
      (11, 1, '2021-01-11');