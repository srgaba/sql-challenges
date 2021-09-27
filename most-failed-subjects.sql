SELECT student_id, COUNT(student_id) FROM exams
WHERE is_pass = 0
GROUP BY student_id
HAVING COUNT(student_id) >= (
    SELECT MAX(numberOfDisaproves) FROM (
        SELECT COUNT(ESS.student_id) AS numberOfDisaproves FROM exams AS ESS
        WHERE ESS.student_id != student_id
        GROUP BY ESS.student_id
    ) AS ES
)
