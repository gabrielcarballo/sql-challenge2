SELECT
    COUNT(historico_reproducao) AS quantidade_musicas_no_historico
FROM
    `SpotifyClone`.historico AS A
WHERE A.usuario_id = 1