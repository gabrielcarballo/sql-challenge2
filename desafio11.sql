SELECT
  A.cancao_nome AS nome_musica,
CASE
  WHEN A.cancao_nome LIKE "%Bard%" THEN REPLACE (A.cancao_nome, "Bard", "QA")
  WHEN A.cancao_nome LIKE "%Amar%" THEN REPLACE (A.cancao_nome, "Amar", "Code Review")
  WHEN A.cancao_nome LIKE "%Pais" THEN REPLACE (A.cancao_nome, "Pais", "Pull Requests")
  WHEN A.cancao_nome LIKE "%SOUL" THEN REPLACE (A.cancao_nome, "SOUL", "CODE")
  WHEN A.cancao_nome LIKE "%SUPERSTAR" THEN REPLACE (A.cancao_nome, "SUPERSTAR", "SUPERDEV")
  END novo_nome
FROM
`SpotifyClone`.cancoes AS A
GROUP BY nome_musica
HAVING novo_nome <> 'null'
ORDER BY nome_musica DESC