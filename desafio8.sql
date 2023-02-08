SELECT
    A.artista_nome AS artista,
    B.album_nome AS album
FROM
    `SpotifyClone`.artistas AS A
    INNER JOIN `SpotifyClone`.album AS B ON B.artista_id = A.artista_id
WHERE
    A.artista_nome = "Elis Regina"
ORDER BY album