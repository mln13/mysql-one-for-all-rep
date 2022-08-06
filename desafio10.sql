SELECT
M.musica_nome AS nome,
COUNT(H.musica_id_H) AS reproducoes
FROM SpotifyClone.Usuario U
JOIN SpotifyClone.Historico H
ON H.usuario_id_H = U.usuario_id
JOIN SpotifyClone.Plano P
ON P.plano_id = U.plano_id_U
JOIN SpotifyClone.Musica M
ON M.id_musica = H.musica_id_H
WHERE P.plano_nome = "pessoal" OR P.plano_nome = "gratuito"
GROUP BY nome
ORDER BY nome ASC