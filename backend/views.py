from .models import Genre,Country,Keyword,ContactUs, Movie, UnidentifiedUser
from .serializers import GenreSerializer,CountrySerializer,KeywordSerializer, ContactUsSerializer, MovieSerializer, UnidentifiedUserSerializer
from rest_framework import viewsets
import random

class CountryViewSet(viewsets.ModelViewSet):
    queryset = Country.objects.all()
    serializer_class = CountrySerializer

    def get_queryset(self):
        queryset = self.queryset
        total = self.request.query_params.get('total')
        random_param = self.request.query_params.get('random')

        if random_param == 'true':
            # Sort the queryset randomly
            queryset = sorted(queryset, key=lambda x: random.random())
        else:
            # Sort the queryset normally
            queryset = queryset

        if total is not None:
            # Limit the queryset based on the 'total' query parameter
            queryset = queryset[:int(total)]

        return queryset

class GenreViewSet(viewsets.ModelViewSet):
    queryset = Genre.objects.all()
    serializer_class = GenreSerializer

    def get_queryset(self):
        queryset = self.queryset
        total = self.request.query_params.get('total')
        random_param = self.request.query_params.get('random')

        if random_param == 'true':
            # Sort the queryset randomly
            queryset = sorted(queryset, key=lambda x: random.random())
        else:
            # Sort the queryset normally
            queryset = queryset

        if total is not None:
            # Limit the queryset based on the 'total' query parameter
            queryset = queryset[:int(total)]

        return queryset

class KeywordViewSet(viewsets.ModelViewSet):
    queryset = Keyword.objects.all()
    serializer_class = KeywordSerializer

    def get_queryset(self):
        queryset = self.queryset
        total = self.request.query_params.get('total')
        random_param = self.request.query_params.get('random')

        if random_param == 'true':
            # Sort the queryset randomly
            queryset = sorted(queryset, key=lambda x: random.random())
        else:
            # Sort the queryset normally
            queryset = queryset

        if total is not None:
            # Limit the queryset based on the 'total' query parameter
            queryset = queryset[:int(total)]

        return queryset
    
class ContactUsViewSet(viewsets.ModelViewSet):
    serializer_class = ContactUsSerializer

    def perform_create(self, serializer):
        serializer.save()

    def get_queryset(self):
        return ContactUs.objects.none()  # Return an empty 
    

class MovieViewSet(viewsets.ModelViewSet):
    queryset = Movie.objects.all()
    serializer_class = MovieSerializer

    def get_queryset(self):
        queryset = self.queryset
        total = self.request.query_params.get('total')
        random_param = self.request.query_params.get('random')

        if random_param == 'true':
            # Sort the queryset randomly
            queryset = sorted(queryset, key=lambda x: random.random())
        else:
            # Sort the queryset normally
            queryset = queryset

        if total is not None:
            # Limit the queryset based on the 'total' query parameter
            queryset = queryset[:int(total)]

        return queryset
    
class UnidentifiedUserViewSet(viewsets.ModelViewSet):
    queryset = UnidentifiedUser.objects.all()
    serializer_class = UnidentifiedUserSerializer