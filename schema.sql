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