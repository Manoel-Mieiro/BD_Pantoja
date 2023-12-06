SELECT c.nome as "Curso", g.ano as "Ano"
FROM grade g 
JOIN curso c on c.idCurso = g.idCurso
WHERE g.ano = 2018;