-- https://www.hackerrank.com/challenges/the-pads/problem

SELECT CONCAT(O.Name, '(', SUBSTRING(O.Occupation, 1, 1), ')') FROM OCCUPATIONS AS O
ORDER BY O.Name ASC
SELECT CONCAT('There are a total of ', COUNT(OC.Occupation), ' ', OC.Occupation, 's.')
FROM OCCUPATIONS as OC
GROUP BY OC.Occupation
ORDER BY Count(OC.Occupation) ASC
