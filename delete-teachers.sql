DELETE FROM "courses" "C"
USING "teachers" "T"
WHERE "C"."teacher_id" = "T"."id"
AND "T"."age" <= 21
