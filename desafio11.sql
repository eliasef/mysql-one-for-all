SELECT
    mu.nome AS nome_musica,
CASE mu.nome
    WHEN 'The Bard’s Song'
        THEN REPLACE(mu.nome, 'The Bard’s Song', 'The QA’s Song')
    WHEN 'BREAK MY SOUL'
        THEN REPLACE(mu.nome, 'BREAK MY SOUL', 'BREAK MY CODE')
    WHEN 'O Medo de Amar é o Medo de Ser Livre'
    	THEN REPLACE(mu.nome, 'O Medo de Amar é o Medo de Ser Livre', 'O Medo de Code Review é o Medo de Ser Livre')
    WHEN 'Como Nossos Pais'
    	THEN REPLACE(mu.nome, 'Como Nossos Pais', 'Como Nossos Pull Requests')
    WHEN 'ALIEN SUPERSTAR'
    	THEN REPLACE(mu.nome, 'ALIEN SUPERSTAR', 'ALIEN SUPERDEV')
    END AS novo_nome
FROM
    `SpotifyClone`.musica AS mu
WHERE
    mu.nome
IN ('The Bard’s Song',
     'BREAK MY SOUL',
     'O Medo de Amar é o Medo de Ser Livre',
     'Como Nossos Pais',
     'ALIEN SUPERSTAR')
ORDER BY
    mu.nome DESC;