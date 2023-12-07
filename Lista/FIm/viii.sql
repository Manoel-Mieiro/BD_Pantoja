-- viii.

SELECT COUNT(gd.idDisciplina) as "QTD Disciplinas"
FROM grade_disciplina gd
GROUP BY gd.idGrade
HAVING gd.idGrade = 8


