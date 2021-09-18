SELECT B.id FROM boxes AS B
WHERE B.is_empty = 1 AND 
(EXISTS (
    SELECT BEF.id FROM boxes AS BEF
    WHERE BEF.id = (B.id - 1) AND BEF.is_empty = 1
) OR EXISTS (
    SELECT AFT.id FROM boxes AS AFT
    WHERE AFT.id = (B.id + 1) AND AFT.is_empty = 1
)) 
ORDER BY B.id ASC
