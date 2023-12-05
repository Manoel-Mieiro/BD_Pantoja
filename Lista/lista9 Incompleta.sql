SELECT c.nome as "Curso", concat(a.nome, ' ', a.sobrenome) as "Aluno", count(*) as "Reprovações"
FROM aluno a
JOIN aluno_grade ag on a.idAluno = ag.idAluno
JOIN grade g on g.idGrade = ag.idGrade
JOIN curso c on c.idCurso = g.idCurso
JOIN historico h on h.matricula = ag.matricula
-- Não farei WHERE por curso 
WHERE h.status = "Reprovado"
HAVING count(*) > 5;