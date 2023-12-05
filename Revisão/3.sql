-- Reprovados

SELECT
    concat(a.nome, " ", a.sobrenome) as "Aluno" ,
   SUM(IF(h.status != "Aprovado", 1, 0)) as "Reprovações" 
FROM
    historico h
JOIN
    aluno_grade ag on ag.matricula = h.matricula
JOIN
    aluno a on a.idAluno = ag.idAluno
JOIN
    grade_disciplina gd on gd.idDisciplina = h.idDisciplina
GROUP BY
    h.matricula
HAVING
    SUM(IF(h.status != "Aprovado", 1, 0)) != 0;