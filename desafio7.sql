SELECT
  A.artista_nome AS artista,
  B.album_nome AS album,
  COUNT(C.artista_seguido) AS seguidores
FROM
  `SpotifyClone`.artistas AS A
INNER JOIN
  `SpotifyClone`.album AS B
ON A.artista_id = B.artista_id
INNER JOIN
  `SpotifyClone`.artistas_seguidos AS C
ON A.artista_id = C.artista_seguido
GROUP BY album_nome, artista_nome
ORDER BY seguidores DESC, artista, album_nome