# Requêtes de base de SQL

1. Créez une table clients qui doit pouvoir contenir un nom, un prénom, une date de naissance et un code postal.
```
CREATE TABLE clients (
    nom VARCHAR,
    prenom VARCHAR,
    date_de_naissance DATE,
    code_postal INT,
); 
```
2. Insérez 3 lignes dans cette table.
```
INSERT INTO clients (nom, prenom, date_de_naissance, code_postal)
VALUES ("Nom1", "Prenom1", "2001/01/01", 11111);
INSERT INTO clients (nom, prenom, date_de_naissance, code_postal)
VALUES ("Nom2", "Prenom2", "2002/02/02", 22222); 
INSERT INTO clients (nom, prenom, date_de_naissance, code_postal)
VALUES ("Nom3", "Prenom3", "2003/03/03", 33333);
```
3. Affichez seulement les prénoms et codes postaux.
   
```
SELECT prenom, code_postal FROM clients;
```