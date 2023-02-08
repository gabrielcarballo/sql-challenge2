SELECT
    A.usuario_nome as usuario,
    IF(
        YEAR(MAX(B.data_reproducao)) >= 2021,
        'Usuário ativo',
        'Usuário inativo'
    ) AS 'status_usuario'
FROM
    `SpotifyClone`.usuario AS A
    LEFT JOIN `SpotifyClone`.historico AS B ON A.usuario_id = B.usuario_id
GROUP BY A.usuario_nome
ORDER BY A.usuario_nome;