SELECT concat(a.nome, ' ', a.sobrenome) as "Aluno", c.nome as "Curso"
FROM  aluno a
JOIN aluno_grade ag on ag.idAluno = a.idAluno
JOIN grade g on g.idGrade = ag.idGrade
JOIN curso c on c.idCurso = g.idCurso
;