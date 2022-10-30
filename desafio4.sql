SELECT
    us.nome AS usuario,
    IF(MAX(YEAR(hi.data_reproducao)) >= '2021', 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM
    `SpotifyClone`.usuario AS us
INNER JOIN
    `SpotifyClone`.historico_reproducoes AS hi ON us.usuario_id = hi.usuario_id
GROUP BY
    us.nome
ORDER BY
    us.nome;
   