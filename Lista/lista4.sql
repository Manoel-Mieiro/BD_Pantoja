SELECT concat(a.nome, ' ', a.sobrenome) as "Aluno", d.nome as "Disciplina", h.status as "Status"
FROM historico h
JOIN disciplina d on d.idDisciplina = h.idDisciplina
JOIN aluno_grade ag on ag.matricula = h.matricula
JOIN aluno a on a.idAluno = ag.idAluno
WHERE h.status = "Reprovado" AND h.matricula = "302014"