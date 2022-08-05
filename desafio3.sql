SELECT U.nome_usuario AS usuario,
COUNT(H.usuario_id_H) AS qtde_musicas_ouvidas,
ROUND(SUM(M.duracao_seg)/60, 2) AS total_minutos
FROM SpotifyClone.Historico H
JOIN SpotifyClone.Usuario U on U.usuario_id = H.usuario_id_H
JOIN SpotifyClone.Musica M on M.id_musica = H.musica_id_H
GROUP BY U.nome_usuario;