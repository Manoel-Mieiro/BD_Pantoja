SELECT concat(a.nome, " ", a.sobrenome) as Aluno, c.nome as Curso, p.nome as Politecnico
FROM historico h 
JOIN aluno_grade as ag on ag.matricula = h.matricula
JOIN aluno a on a.idAluno = ag.idAluno
JOIN grade as g on g.idGrade = ag.idGrade
JOIN curso c on c.idCurso = g.idCurso
JOIN politecnico p on p.idPolitecnico = c.idPolitecnico
WHERE a.idAluno = 19;