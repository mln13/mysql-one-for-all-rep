SELECT COUNT(H.musica_id_H) AS quantidade_musicas_no_historico
FROM SpotifyClone.Historico H
JOIN SpotifyClone.Usuario U
ON U.usuario_id = H.usuario_id_H
GROUP BY U.nome_usuario
HAVING U.nome_usuario = "Bill"