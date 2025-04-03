-- ORM
-- Movie.objects.all()

SELECT * FROM movies_movie;

-- User.objects.all()
SELECT * FROM movies_user;

-- Movie.objects.order_by('year')
SELECT * FROM movies_movie
ORDER BY year;

-- Movie.objects.order_by('-year')
SELECT * FROM movies_movie
ORDER BY year DESC;

-- User.objects.filter(age=31)
SELECT * FROM movies_user
WHERE age=31;

-- User.obkects.filter(age__lt=20)
SELECT * FROM movies_user
WHERE age<20;

-- User.objects.filter(age__gte=20, age__lt=30)
SELECT * FROM movies_user
WHERE age >=20 AND age < 30;

-- Movie.objectS.aggregate(MAX('year'))
SELECT MAX(year) FROM movies_movie;

-- 1번 영화의 최대 평점값, 평균 평점
SELECT MAX(value), AVG(value) FROM movies_score
WHERE movie_id=1;

-- Score.objectS.filter(user_id=1).count()
SELECT COUNT(*) FROM movies_score
WHERE user_id=1;

-- Movie.objects.filter(title__contains='the)
SELECT * FROM movies_movie
WHERE title LIKE '%the%';

SELECT * FROM movies_movie
WHERE title LIKE '%g__d%';

-- UNIQUE한 나라가 몇개 있는지(DISTINCT : 중복 제거)
-- User.objects.valueS('country').distinct().count()
SELECT COUNT(DISTINCT country) FROM movies_user;

-- User.objects.filter(age__range=[20, 29])
SELECT * FROM movies_user
WHERE AGE BETWEEN 20 AND 29;

-- Movie.objects.filter(year__in=[2000, 2005, 2010])
SELECT * FROM movies_movie
WHERE year IN (2000, 2005, 2010)
ORDER BY year ASC;