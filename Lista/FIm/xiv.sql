-- xiv.

SELECT COUNT(gd.idDisciplina) as "QTD_DISCIPLINAS"
FROM grade_disciplina gd
JOIN grade g on g.idGrade = gd.idGrade
JOIN curso c on c.idCurso = g.idCurso
GROUP BY c.nome, g.ano
HAVING c.nome= 'Gestão Industrial e Logística' AND g.ano = 2018
