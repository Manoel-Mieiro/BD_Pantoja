SELECT concat(a.nome, ' ', a.sobrenome) as "Aluno", count(*) as "Qtd de matrículas", g.ano as "Grade"
FROM aluno a 
JOIN aluno_grade ag on a.idAluno = ag.idAluno
JOIN grade g on  ag.idGrade = g.idGrade
WHERE g.idGrade = 9 HAVING count(*) > 1;