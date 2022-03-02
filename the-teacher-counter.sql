SELECT "T"."name" "teacher_name", COALESCE((
    SELECT SUM("student_count") FROM "courses"
    WHERE "teacher_id" = "T"."id" 
), 0) "student_count" FROM "teachers" "T"
