// https://www.hackerrank.com/challenges/symmetric-pairs/problem

SELECT P.X, P.Y FROM Functions AS P 
INNER JOIN Functions AS C ON P.Y = C.X AND P.X = C.Y 
WHERE P.X <= P.Y
GROUP BY P.X, P.Y
HAVING P.X < P.Y OR COUNT(P.X) > 1
ORDER BY P.X ASC