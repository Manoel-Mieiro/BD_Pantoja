-- xviii.

SELECT COUNT(h.idDisciplina), d.nome as Disciplina
FROM historico h
JOIN disciplina d on d.idDisciplina = h.idDisciplina
GROUP BY h.status, h.matricula
HAVING h.status = "Aprovado" AND h.matricula = 302013

