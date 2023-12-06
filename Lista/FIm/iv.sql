-- iv.
SELECT h.matricula as "Matricula", c.nome as "Curso", SUM(d.ch) as "CH_total"
FROM historico h
JOIN aluno_grade ag on h.matricula = ag.matricula
JOIN aluno a on ag.idALuno = a.idAluno
JOIN grade g on g.idGrade = ag.idGrade
JOIN curso c on c.idCurso = g.idCurso
JOIN disciplina d on d.idDisciplina = h.idDisciplina
-- GROUP BY h.idHistorico
-- HAVING a.nome = "Kate" AND a.sobrenome = "Chienne"

