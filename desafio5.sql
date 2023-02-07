SELECT
  A.cancao_nome AS cancao,
  COUNT(B.historico_reproducao) AS reproducoes
FROM
  `SpotifyClone`.cancoes AS A
  INNER JOIN `SpotifyClone`.historico AS B ON A.cancao_id = B.historico_reproducao
GROUP BY A.cancao_nome
ORDER BY reproducoes DESC, cancao
LIMIT 2;