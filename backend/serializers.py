from rest_framework import serializers
from .models import Genre,Country,Keyword,ContactUs,Movie,UnidentifiedUser


class GenreSerializer(serializers.ModelSerializer):
    class Meta:
        model = Genre
        fields = '__all__'

class CountrySerializer(serializers.ModelSerializer):
    class Meta:
        model = Country
        fields = ["country_id","country_name"]

class KeywordSerializer(serializers.ModelSerializer):
    class Meta:
        model = Keyword
        fields = "__all__"

class ContactUsSerializer(serializers.ModelSerializer):
    class Meta:
        model = ContactUs
        fields = "__all__"

class MovieSerializer(serializers.ModelSerializer):
    class Meta:
        model = Movie
        fields = '__all__'

class UnidentifiedUserSerializer(serializers.ModelSerializer):
    class Meta:
        model = UnidentifiedUser
        fields = '__all__'