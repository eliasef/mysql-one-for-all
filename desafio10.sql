SELECT
    mu.nome AS nome,
    COUNT(hi.musica_id) AS reproducoes
FROM
    `SpotifyClone`.musica AS mu
INNER JOIN
    `SpotifyClone`.historico_reproducoes AS hi ON hi.musica_id = mu.musica_id
INNER JOIN 
    `SpotifyClone`.usuario AS us ON us.usuario_id = hi.usuario_id
    AND (us.plano_id = 1 OR us.plano_id = 4)
GROUP BY
    mu.nome
ORDER BY
    nome;