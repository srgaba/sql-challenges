--https://www.hackerrank.com/challenges/the-report/problem

SELECT IF(GRADE < 8, NULL, St.Name), Gr.Grade, St.Marks FROM Students AS St 
INNER JOIN Grades AS Gr ON St.Marks >= Gr.Min_Mark AND St.Marks <= Gr.Max_Mark
ORDER BY GRADE DESC, NAME
