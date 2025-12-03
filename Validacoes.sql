-- Validação 1: Buscar o nome e ano dos filmes
SELECT Nome, Ano 
FROM Filmes;

-- Validação 2: Buscar o nome e ano dos filmes, ordenados por ano crescente
SELECT Nome, Ano 
FROM Filmes 
ORDER BY Ano ASC;

-- Validação 3: Buscar pelo filme "De Volta para o Futuro", trazendo nome, ano e duração
SELECT Nome, Ano, Duracao 
FROM Filmes 
WHERE Nome = 'De Volta para o Futuro';

-- Validação 4: Buscar os filmes lançados em 1997
SELECT Nome, Ano 
FROM Filmes 
WHERE Ano = 1997;

-- Validação 5: Buscar os filmes lançados após o ano 2000
SELECT Nome, Ano 
FROM Filmes 
WHERE Ano > 2000;

-- Validação 6: Buscar os filmes com duração maior que 100 e menor que 150, ordenando pela duração crescente
SELECT Nome, Ano, Duracao 
FROM Filmes 
WHERE Duracao > 100 AND Duracao < 150 
ORDER BY Duracao ASC;

-- Validação 7: Buscar a quantidade de filmes lançados por ano, somando a duração total e ordenando pela soma da duração em ordem decrescente
SELECT 
    Ano, 
    COUNT(*) AS QuantidadeFilmes,
    SUM(Duracao) AS SomaDuracao
FROM Filmes
GROUP BY Ano
ORDER BY SomaDuracao DESC;

-- Validação 8: Buscar os atores do gênero masculino, retornando o PrimeiroNome e UltimoNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M';

-- Validação 9: Buscar os atores do gênero feminino, retornando o PrimeiroNome e UltimoNome, ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;

-- Validação 10: Buscar o nome do filme e o gênero
SELECT f.Nome AS NomeFilme, g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id;

-- Validação 11: Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT f.Nome AS NomeFilme, g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';

-- Validação 12: Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT f.Nome AS NomeFilme,
       a.PrimeiroNome,
       a.UltimoNome,
       ef.Papel
FROM Filmes f
INNER JOIN ElencoFilme ef ON f.Id = ef.IdFilme
INNER JOIN Atores a ON ef.IdAtor = a.Id;