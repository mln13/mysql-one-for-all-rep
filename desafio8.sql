SELECT
Ar.artista_nome AS artista,
Al.album_nome AS album
FROM SpotifyClone.Artista Ar
JOIN SpotifyClone.Albuns Al
ON Al.artista_id_A = artista_id
HAVING artista = "Walter Phoenix"