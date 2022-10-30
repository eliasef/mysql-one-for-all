SELECT
    mu.nome AS cancao,
    COUNT(hi.usuario_id) AS reproducoes
FROM
    SpotifyClone.musica AS mu
INNER JOIN
    SpotifyClone.historico_reproducoes AS hi ON mu.musica_id = hi.musica_id
GROUP BY
    hi.musica_id
ORDER BY
    COUNT(hi.usuario_id) DESC, mu.nome ASC
LIMIT 2;