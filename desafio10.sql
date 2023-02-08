SELECT
    A.cancao_nome AS nome,
    COUNT(B.historico_reproducao) AS reproducoes
FROM
    `SpotifyClone`.cancoes AS A
    INNER JOIN `SpotifyClone`.historico AS B
    INNER JOIN `SpotifyClone`.usuario AS C ON A.cancao_id = B.historico_reproducao
    AND C.usuario_id = B.usuario_id
WHERE
    C.plano_id = 1
    OR C.plano_id = 4
GROUP BY nome
ORDER BY nome