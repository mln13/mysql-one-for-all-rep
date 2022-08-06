SELECT MIN(P.valor) AS "faturamento_minimo",
MAX(P.valor) AS "faturamento_maximo",
ROUND(AVG(P.valor), 2) AS "faturamento_medio",
SUM(P.valor) AS "faturamento_total"
FROM SpotifyClone.Plano P
JOIN SpotifyClone.Usuario U
ON U.plano_id_U = P.plano_id