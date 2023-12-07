-- xvi

SELECT c.nome as Curso ,COUNT(gd.idDisciplina) as "QTD Disc"
FROM grade_disciplina gd 
JOIN grade g on g.idGrade = gd.idGrade
JOIN curso c on c.idCurso = g.idCurso
GROUP BY c.idCurso
