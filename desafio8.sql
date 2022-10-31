SELECT
    ar.nome AS artista,
    al.nome AS album
FROM
    `SpotifyClone`.artista AS ar
INNER JOIN
    `SpotifyClone`.album AS al ON ar.artista_id = al.artista_id
GROUP BY
    ar.artista_id, al.nome
ORDER BY
    ar.nome ASC, al.nome ASC
LIMIT 2 OFFSET 3;