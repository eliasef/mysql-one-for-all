SELECT
	us.nome AS 'usuario',
    COUNT(hi.musica_id) AS 'qt_de_musicas_ouvidas',
    ROUND(SUM(mu.duracao_segundos)/60, 2) AS total_minutos
FROM
	SpotifyClone.usuario AS us
INNER JOIN SpotifyClone.historico_reproducoes AS hi ON us.usuario_id = hi.usuario_id
INNER JOIN SpotifyClone.musica AS mu ON mu.musica_id = hi.musica_id
GROUP BY
	us.nome
ORDER BY
	us.nome ASC;