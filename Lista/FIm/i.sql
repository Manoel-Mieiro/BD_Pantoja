-- I.

SELECT concat(a.nome, " ", a.sobrenome) as Aluno, c.nome as Curso
FROM aluno a
JOIN aluno_grade ag on a.idAluno = ag.idAluno
JOIN grade g on g.idGrade = ag.idGrade
JOIN curso c on c.idCurso = g.idCurso
WHERE g.ano = 2018 AND c.idCurso = 10
