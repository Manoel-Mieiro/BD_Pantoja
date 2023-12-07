    -- xv.

    SELECT concat(a.nome, ' ', a.sobrenome) as Aluno
    FROM aluno_grade ag
    JOIN aluno a on a.idAluno = ag.idAluno
    GROUP BY ag.matricula, ag.idGrade
    HAVING COUNT(ag.matricula) > 1 AND ag.idGrade = 9
