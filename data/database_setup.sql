create database movie_ratings_analysis;
use movie_ratings_analysis;

CREATE TABLE imdb_movies (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    release_year INT,
    certificate VARCHAR(10),
    runtime VARCHAR(50),
    genre VARCHAR(100),
    rating FLOAT,
    overview TEXT,
    meta_score FLOAT,
    director VARCHAR(100),
    star1 VARCHAR(100),
    star2 VARCHAR(100),
    star3 VARCHAR(100),
    star4 VARCHAR(100),
    no_of_votes INT,
    gross BIGINT
);
