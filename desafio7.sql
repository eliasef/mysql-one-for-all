SELECT
    ar.nome AS artista,
    al.nome AS album,
    COUNT(se.artista_id) AS seguidores
FROM
    `SpotifyClone`.artista AS ar
INNER JOIN
    `SpotifyClone`.album AS al ON al.artista_id = ar.artista_id 
INNER JOIN
    `SpotifyClone`.seguindo_artistas AS se ON se.artista_id = al.artista_id 
GROUP BY
    ar.artista_id, al.nome
ORDER BY
    seguidores DESC, artista ASC, album ASC

-- explicando linha 8: se o artista_id é referenciado 3 vezes, então ele é seguido por 3 usuaŕios, e daí é só agrupar por artista_id ou nome do artista.
