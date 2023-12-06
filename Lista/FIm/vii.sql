-- vii

-- Esse script retorna quantas grades tem cada curso
-- SELECT c.nome as "Curso" , COUNT(g.idGrade) as "Grade(s)"
-- FROM curso c
-- JOIN grade g on g.idCurso = c.idCurso
-- GROUP BY c.idCurso



-- Esse outro vai verificar quantas grades x curso tem

-- 

SELECT c.nome as "Curso" , COUNT(g.idGrade) as "Grade(s)"
FROM curso c
JOIN grade g on g.idCurso = c.idCurso
GROUP BY c.idCurso
HAVING c.nome = 'Gestão Industrial e Logística '
