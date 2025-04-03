1. 가상환경 설정
2. `pip install django faker`
    ```
    django-admin startproject sql_orm .
    django-startapp movies
    ```
3. `settings.py`에 movies 등록
    ```
    python manage.py makemigrations
    python manage.py migrate
    ```
4. movie models.py에 모델 입력
5. `settings.py`에 mysql DATABASES 변경등록
    - Django에서 mySQL사용하기 위함(연동)

6. `pip install mysqlclient` 설치
    ```
    python manage.py migrate
    ```
    - 테이블이 생성되는 두 가지 경우를 눈으로 볼 수 있음

7. 앱 폴더 `movies`에 폴더 및 파일 생성
    ```
    movie/
        management/
            __init__.py
            commands/
                __init__.py
                generate.py
    ```

8. `generate.py`에 학습을 위한 영화 메타데이터 생성 클래스 복붙
    ```
    python manage.py generate
    ```
    - `settings.py`에서 데이터베이스 선택에 따라 작업공간 달라질 수 있음