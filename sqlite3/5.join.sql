-- 1번 유저가 작성한 모든 평점(scores)

-- user = User.objects.get(id=1)
-- user.score_set.all()
-- 혹은 Score.objects.filter(user_id=1)

SELECT * 
FROM movies_user JOIN movies_score
ON movies_user.id = movies_score.user_id
WHERE movies_user.id=1;

-- 100번 카테고리에 있는 모든 영화
-- Movie.objects.get(id=100).categories.all()

SELECT *
FROM movies_movie JOIN movies_category_movies, movies_category
ON movies_movie.id = movies_category_movies.movie_id
AND movies_category_movies.category_id = movies_category.id
WHERE movies_movie.id=100;

SELECT *
FROM movies_movie JOIN movies_category_movies
ON movies_movie.id = movies_category_movies.movie_id
JOIN movies_category
ON movies_category_movies.category_id = movies_category.id
WHERE movies_movie.id=100;

-- drama 카테고리에 속한 모든 영화 출력
-- Category.objects.get(name='drama').movies.all()

SELECT *
FROM movies_movie JOIN movies_category_movies
ON movies_movie.id = movies_category_movies.movie_id
JOIN movies_category
ON movies_category_movies.category_id = movies_category.id
WHERE movies_category.name='drama';

SELECT *
FROM movies_category JOIN movies_category_movies
ON movies_category.id = movies_category_movies.category_id
JOIN movies_movie
ON movies_category_movies.movie_id = movies_movie.id
WHERE movies_category.name='drama';
-- JOIN문을 변수화 시킬수도 있고 CREATE VIEW로 가능하다

-- group by
-- User.objects.values('country').annotate(Count('id'))
SELECT country, COUNT(country) FROM movies_user
GROUP BY country ;

-- 어떤 국가사람이 몇점 줬는지/국가별 평균 평점
-- User.objects.values('country').annotate(Avg('score__value'))
SELECT country, AVG(value)
FROM movies_user JOIN movies_score
ON movies_user.id = movies_score.user_id
GROUP BY country;