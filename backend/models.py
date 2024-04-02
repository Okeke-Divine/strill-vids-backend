from django.db import models

class Genre(models.Model):
    genre_id = models.AutoField(primary_key=True)
    genre_name = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'genres' 

class Country(models.Model):
    country_id = models.AutoField(primary_key=True)
    country_name = models.CharField(max_length=50)
    country_iso_code = models.CharField(max_length=5)
    country_flag_url = models.CharField(max_length=255)
    nationality = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'countries'  

class Keyword(models.Model):
    keyword_id  = models.AutoField(primary_key=True)
    keyword_name = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'keywords'  

class ContactUs(models.Model):
    cu_id  = models.AutoField(primary_key=True)
    contact_name = models.CharField(max_length=50)
    contact_email = models.CharField(max_length=255)
    contact_message = models.TextField()
    created_at  = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'contact_us'

class Movie(models.Model):
    movie_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=50)
    description = models.TextField()
    release_date = models.DateField()
    release_time = models.TimeField()
    release_year = models.PositiveSmallIntegerField()
    average_rating = models.FloatField()
    run_time = models.PositiveSmallIntegerField()
    thumbnail_vertical = models.CharField(max_length=255)
    thumbnail_horizontal = models.CharField(max_length=255)
    plot = models.TextField()
    movie_rating = models.PositiveSmallIntegerField()

    class Meta:
        managed = False
        db_table = 'movie'


class UnidentifiedUser(models.Model):
    uu_id = models.AutoField(primary_key=True)
    token = models.CharField(max_length=255)
    browser = models.CharField(max_length=255)
    os = models.CharField(max_length=255)
    ip = models.CharField(max_length=255)
    first_activity = models.CharField(max_length=255)
    last_activity = models.CharField(max_length=255)
    user_agent = models.CharField(max_length=255)
    city = models.CharField(max_length=255)
    region = models.CharField(max_length=255)
    country = models.CharField(max_length=255)
    org = models.CharField(max_length=255)
    timezone = models.CharField(max_length=255)
    
    class Meta:
        managed = False  
        db_table = 'unidentified_users_table' 