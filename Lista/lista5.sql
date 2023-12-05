SELECT h.matricula as "Matrícula", count(h.status) as "Qtd Aprovações"
FROM historico h
WHERE h.status = "Aprovado" and h.matricula = 302013