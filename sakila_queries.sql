SHOW TABLES; #display all the tables in the database you're in (READ - DDL)

DESCRIBE city;
DESCRIBE country;
DESCRIBE countrylanguage;

SELECT * FROM city; #(READ - DML)
SELECT * FROM country; #(READ - DML)
SELECT * FROM countrylanguage; #(READ - DML)
SELECT * FROM city WHERE CountryCode = "USA"; #(READ - DML)
SELECT COUNT(Name) FROM city WHERE CountryCode = "USA"; #(READ - DML)

SELECT Population,LifeExpectancy FROM country WHERE Name = "Argentina"; #(READ - DML)
SELECT LifeExpectancy,Name FROM country WHERE LifeExpectancy (NOT NULL) ORDER BY LifeExpectancy DESC;
SELECT LifeExpectancy,Name FROM country WHERE LifeExpectancy is NOT NULL ORDER BY LifeExpectancy DESC limit 1;

#city ID is county Capital where name = "Spain"
SELECT City.Name FROM country JOIN city ON country.Capital=city.ID WHERE country.name="Spain";

SELECT DISTINCT countrylanguage.Language FROM countrylanguage JOIN country ON countrylanguage.CountryCode=country.Code WHERE country.Region="Southeast Asia";
