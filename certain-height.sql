# https://www.lintcode.com/problem/1943/

-- SELECT MAX(SH.height) AS height FROM student_heights AS SH 
-- WHERE (
--     SELECT COUNT(*) FROM student_heights
--     WHERE SH.height = height
-- ) = 1

SELECT MAX(height) AS height FROM (
    SELECT MAX(height) AS height FROM student_heights
    GROUP BY height 
    HAVING COUNT(height) = 1
) AS students
