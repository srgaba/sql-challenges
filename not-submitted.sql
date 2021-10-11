SELECT S.name FROM students S
WHERE S.id NOT IN (
    SELECT SS.id FROM companies C
    INNER JOIN recording R ON R.company_id = C.id 
    INNER JOIN students SS ON R.student_id = SS.id
    WHERE C.name = 'Alibaba'  
) 
