SELECT
    COUNT(DISTINCT mu.musica_id) AS cancoes,
    COUNT(DISTINCT ar.artista_id) AS artistas,
    COUNT(DISTINCT al.album_id) AS albuns
FROM
    `SpotifyClone`.musica AS mu,
    `SpotifyClone`.artista AS ar,
    `SpotifyClone`.album AS al;