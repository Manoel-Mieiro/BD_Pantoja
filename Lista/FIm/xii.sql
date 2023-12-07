-- xii.
SELECT d.nome as Reprovacoes
FROM historico h
JOIN disciplina d on d.idDisciplina = h.idDisciplina
WHERE h.status = "Reprovado" AND  h.matricula = 302014

