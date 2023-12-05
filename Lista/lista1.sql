SELECT concat(a.nome, a.sobrenome) as "Aluno", g.ano as "Ano", c.nome as "Curso"
FROM aluno a
JOIN aluno_grade ag ON (ag.idAluno = a.idAluno)
JOIN grade g ON (ag.idGrade = g.idGrade)
JOIN curso c ON (c.idCurso = g.idCurso)
where g.ano = 2018 AND c.idCurso = 10