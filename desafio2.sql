SELECT COUNT(DISTINCT M.musica_nome) AS "cancoes",COUNT(DISTINCT Art.artista_nome) AS "artistas", COUNT(DISTINCT Al.album_nome) AS "albuns"
FROM SpotifyClone.Albuns AS Al, SpotifyClone.Artista AS Art, SpotifyClone.Musica AS M;