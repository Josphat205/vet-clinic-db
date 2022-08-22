/* Database schema to keep the structure of entire database. */

 CREATE TABLE animals (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(100), date_of_birth DATE, escape_attemps INT, neutered BOOLEAN, weight_kg DECIMAL);
alter table animals add species varchar(100);

  create table owners( id serial primary key, full_name varchar(255), age int);
  create table species( id serial primary key, name varchar(255));
  alter table animals add primary key (id)
  alter table animals drop column species;
  alter table animals add column species_id int;
  alter table animals add constraint fk_species foreign key (species_id) references species(id) on delete cascade;
  alter table animals add column owner_id int;
  alter table animals add constraint fk_owner foreign key (owner_id) references owners(id) on delete cascade;
  /*day 4*/
  create table vets(id int serial primary key , name varchar(255), age int , date_of_graduation date);
  CREATE TABLE specializations (
    id INT GENERATED ALWAYS AS IDENTITY,
    species_id INT REFERENCES species (id) ON DELETE CASCADE,
    vet_id INT REFERENCES vets (id) ON DELETE CASCADE,
    PRIMARY KEY (id)
);

CREATE TABLE visits (
    id INT GENERATED ALWAYS AS IDENTITY,
    animal_id INT REFERENCES animals (id) ON DELETE CASCADE,
    vet_id INT REFERENCES vets (id) ON DELETE CASCADE,
    date_of_visit DATE,
    PRIMARY KEY (id)
);


-- Add an email column to your owners table
ALTER TABLE owners ADD COLUMN email VARCHAR(120);


create index visit_animal_id on visits(animal_id asc);
create index visit_vet_id on visits (vet_id asc);
create index ownres_email on owners(email desc);

