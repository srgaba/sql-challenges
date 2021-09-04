# https://www.lintcode.com/problem/1918/

SELECT player.height as second_height FROM players AS player 
WHERE (
    SELECT Count(*) FROM (
        SELECT Max(id), height FROM players
        GROUP BY height
    ) AS P
    WHERE P.height > player.height
) = 1

