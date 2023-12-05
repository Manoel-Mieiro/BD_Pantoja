SELECT c.nome as "Curso", count(gd.idDisciplina) as "QTD disciplinas", g.idGrade as "Grade"
FROM curso c 
JOIN grade g on g.idCurso = c.idCurso
JOIN grade_disciplina gd on gd.idGrade = g.idGrade
GROUP BY c.nome, g.idGrade

