SELECT g.idGrade as "Grade",  c.nome as "Curso", count(d.idDisciplina) as "Qtd disciplinas" 
FROM disciplina d
JOIN grade_disciplina gd on d.idDisciplina = gd.idDisciplina
JOIN  grade g on g.idGrade = gd.idGrade
JOIN curso c on c.idCurso = g.idCurso
WHERE g.ano =  2022 AND c.nome = "Gestão de Marketing";