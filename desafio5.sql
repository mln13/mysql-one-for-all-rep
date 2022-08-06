SELECT 
M.musica_nome AS cancao,
COUNT(H.musica_id_H) AS reproducoes
FROM SpotifyClone.Musica M
JOIN SpotifyClone.Historico H 
ON M.id_musica = H.musica_id_H
GROUP BY M.musica_nome
HAVING reproducoes = 2
LIMIT 2