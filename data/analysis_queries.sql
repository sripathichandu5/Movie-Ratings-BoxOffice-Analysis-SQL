-- Top 10 Highest Grossing Movies
SELECT title, gross
FROM imdb_movies_cleaned
ORDER BY gross DESC
LIMIT 10;

-- Average IMDb Rating by Genre
SELECT genre, ROUND(AVG(rating), 2) AS avg_rating
FROM imdb_movies_cleaned
GROUP BY genre
ORDER BY avg_rating DESC;

-- Total Revenue by Director (Top 10)
SELECT director, SUM(gross) AS total_gross
FROM imdb_movies_cleaned
GROUP BY director
ORDER BY total_gross DESC
LIMIT 10;

-- Number of Movies by Certificate
SELECT certificate, COUNT(*) AS num_movies
FROM imdb_movies_cleaned
GROUP BY certificate
ORDER BY num_movies DESC;

-- Movies Released Each Year
SELECT release_year, COUNT(*) AS num_movies
FROM imdb_movies_cleaned
GROUP BY release_year
ORDER BY release_year ASC;

-- Average Gross Revenue by Certificate Type
SELECT certificate, ROUND(AVG(gross), 2) AS avg_gross
FROM imdb_movies_cleaned
GROUP BY certificate
ORDER BY avg_gross DESC;

-- Movies Directed by Christopher Nolan
SELECT title, release_year, rating, gross
FROM imdb_movies_cleaned
WHERE director = 'Christopher Nolan';

-- Top 10 Movies with Highest IMDb Ratings
SELECT title, rating, release_year
FROM imdb_movies_cleaned
ORDER BY rating DESC
LIMIT 10;

-- Genre-wise Total Number of Movies
SELECT genre, COUNT(*) AS num_movies
FROM imdb_movies_cleaned
GROUP BY genre
ORDER BY num_movies DESC;

-- High Rating but Low Gross Movies
SELECT title, rating, gross
FROM imdb_movies_cleaned
WHERE rating > 8.5 AND gross < 50000000
ORDER BY rating DESC;
