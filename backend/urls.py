from django.contrib import admin
from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import GenreViewSet,CountryViewSet,KeywordViewSet,ContactUsViewSet,MovieViewSet, UnidentifiedUserViewSet

router = DefaultRouter()
router.register(r'genres', GenreViewSet)
router.register(r'countries', CountryViewSet)
router.register(r'keyword', KeywordViewSet)
router.register(r'contact-us', ContactUsViewSet,  basename='contactus')
router.register(r'movie', MovieViewSet)
router.register(r'temporary-authentication', UnidentifiedUserViewSet, basename='unidentifieduser')


urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/v1/', include(router.urls))
]
