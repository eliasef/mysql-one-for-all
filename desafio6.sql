SELECT
    ROUND(MIN(pl.preco), 2) as faturamento_minimo,
    ROUND(MAX(pl.preco), 2) as faturamento_maximo,
    ROUND(AVG(pl.preco), 2) as faturamento_medio,
    ROUND(SUM(pl.preco), 2) AS faturamento_total
FROM
    `SpotifyClone`.usuario AS us
INNER JOIN
    `SpotifyClone`.plano AS pl ON pl.plano_id = us.plano_id;