SELECT U.nome_usuario AS usuario,
IF (MAX(YEAR(H.data_reproducao)) >= 2021, "Usuário ativo", "Usuário inativo") AS condicao_usuario
FROM SpotifyClone.Usuario U
JOIN SpotifyClone.Historico H ON H.usuario_id_H = U.usuario_id
GROUP BY U.nome_usuario