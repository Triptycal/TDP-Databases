#1.	Using COUNT, get the number of cities in the USA.
 #274
 SELECT COUNT(Name) FROM city WHERE CountryCode = "USA"; #(READ - DML)
#2.	Find out the population and life expectancy for people in Argentina.
#Population: 37032000  Life Expectancy: 75.1
SELECT Population,LifeExpectancy FROM country WHERE Name = "Argentina"; #(READ - DML)
#3.	Using IS NOT NULL, ORDER BY, and LIMIT, which country has the highest life expectancy?
#83.5	Andorra
SELECT LifeExpectancy,Name FROM country WHERE LifeExpectancy is NOT NULL ORDER BY 
LifeExpectancy DESC limit 1;
#4.	Using JOIN ... ON, find the capital city of Spain.
#Madrid
SELECT City.Name FROM country JOIN city ON country.Capital=city.ID WHERE country.name="Spain";
#5.	Using JOIN ... ON, list all the languages spoken in the Southeast Asia region.
#47 languages
SELECT DISTINCT countrylanguage.Language FROM countrylanguage JOIN country ON countrylanguage.CountryCode=country.Code WHERE country.Region="Southeast Asia";

#6.	Using a single query, list 25 cities around the world that start with the letter F.
SELECT * FROM city WHERE name LIKE "f%" LIMIT 25;
#7.	Using COUNT and JOIN ... ON, get the number of cities in China.
#363

SELECT COUNT(city.name) FROM city JOIN Country ON city.CountryCode=Country.Code WHERE Country.Name="China";
#8.	Using IS NOT NULL, ORDER BY, and LIMIT, which country has the lowest population? Discard non-zero populations.
#50	Pitcairn
SELECT Population,Name FROM country WHERE (Population is NOT NULL AND Population>0) ORDER BY 
Population ASC limit 1;

#9.	Using aggregate functions, return the number of countries the database contains.
SELECT COUNT(name) FROM country;
#10.	What are the top ten largest countries by area?
#Russian Federation,Antarctica,Canada,China,United States,Brazil,Australia,India,Argentina,Kazakstan
SELECT name,SurfaceArea FROM country WHERE SurfaceArea is NOT NULL ORDER BY 
SurfaceArea DESC limit 10;
#11.	List the five largest cities by population in Japan.
12.	List the names and country codes of every country with Elizabeth II as its Head of State. You will need to fix the mistake first!
13.	List the top ten countries with the smallest population-to-area ratio. Discard any countries with a ratio of 0.
14.	List every unique world language.
15.	List the names and GNP of the world's top 10 richest countries.
16.	List the names of, and number of languages spoken by, the top ten most multilingual countries.
17.	List every country where over 50% of its population can speak German.
18.	Which country has the worst life expectancy? Discard zero or null values.
19.	List the top three most common government forms.
20.	How many countries have gained independence since records began?
