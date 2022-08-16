/* Database schema to keep the structure of entire database. */

 CREATE TABLE animals (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(100), date_of_birth DATE, escape_attemps INT, neutered BOOLEAN, weight_kg DECIMAL);
alter table animals add species varchar(100);