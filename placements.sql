-- https://www.hackerrank.com/challenges/placements/problem

SELECT S.Name FROM Students AS S 
INNER JOIN Packages AS P ON S.ID = P.ID
INNER JOIN Friends AS F ON F.ID = S.ID
INNER JOIN Students AS BF ON F.Friend_ID = BF.ID
INNER JOIN Packages AS PF ON BF.ID = PF.ID AND PF.Salary > P.Salary
ORDER BY PF.Salary
