#https://www.lintcode.com/problem/2074/description

SELECT "T"."name" FROM "courses" "C"
INNER JOIN "teachers" "T" ON "T"."id" = "C"."teacher_id"
GROUP BY "C"."teacher_id", "T"."name"
HAVING ("T"."name", AVG("C"."student_count")) IN (
    SELECT "T2"."name", AVG("C2"."student_count") "avg" FROM "courses" "C2"
    INNER JOIN "teachers" "T2" ON "C2"."teacher_id" = "T2"."id"
    GROUP BY "C2"."teacher_id", "T2"."name"
    ORDER BY "avg" DESC
    LIMIT 2
) AND (
    SELECT COUNT("C3"."teacher_id") FROM (
        SELECT "teacher_id" FROM "courses"
        GROUP BY "teacher_id"
    ) "C3"
) > 1
