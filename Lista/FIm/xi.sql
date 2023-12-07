-- x.
SELECT d.nome as Disciplina, h.data as Data, h.nota as Nota
FROM historico h
JOIN disciplina d on h.idDisciplina = d.idDisciplina
WHERE h.matricula = 'GADM1234'
