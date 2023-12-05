SELECT ag.matricula as "Matrícula", concat(a.nome, ' ', a.sobrenome) as "Aluno", sum(d.ch) AS "CH total", g.ano as "Grade"
FROM aluno_grade ag 
JOIN aluno a on ag.idAluno = a.idAluno
JOIN grade_disciplina gd on gd.idGrade = ag.idGrade
JOIN disciplina d on d.idDisciplina = gd.idDisciplina
JOIN grade g on g.idCurso = gd.idGrade
JOIN curso c on c.idCurso = g.idCurso
WHERE a.nome = "Funny" and a.sobrenome = "Valentine"