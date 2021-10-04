-- SELECT T.name, T.age, T.country FROM teachers AS T
-- WHERE (T.id) IN (
--     SELECT TS.id FROM teachers AS TS
--     WHERE T.country = TS.country AND TS.age >= (
--         SELECT MAX(TSS.age) FROM teachers AS TSS
--         WHERE TSS.country = TS.country AND TSS.id != TS.id
--     ) 
-- )
SELECT T.name, T.age, T.country FROM teachers AS T,
(SELECT MAX(age) AS age, country FROM teachers GROUP BY country) AS T2
WHERE T.age = T2.age AND T.country = T2.country
