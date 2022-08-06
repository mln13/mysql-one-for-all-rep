SELECT 
Ar.artista_nome AS artista,
Al.album_nome AS album,
COUNT(S.usuario_id_S) AS seguidores
FROM SpotifyClone.Artista Ar
JOIN SpotifyClone.Seguindo S
ON Ar.artista_id = S.artistas_seguidos
JOIN SpotifyClone.Albuns Al
ON Ar.artista_id = Al.artista_id_A
GROUP BY Ar.artista_nome, Al.album_nome
ORDER BY seguidores DESC, artista, album