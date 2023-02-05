SELECT
    A.usuario_nome AS usuario,
    COUNT(B.usuario_id) AS qt_de_musicas_ouvidas,
    ROUND(SUM(C.duracao_segundos / 60), 2) AS total_minutos
FROM
    `SpotifyClone`.usuario AS A
    INNER JOIN `SpotifyClone`.historico AS B ON A.usuario_id = B.usuario_id
    INNER JOIN `SpotifyClone`.cancoes AS C ON B.historico_reproducao = C.cancao_id
GROUP BY A.usuario_nome
ORDER BY A.usuario_nome;