# admin.py

from django.contrib import admin
from .models import Genre, Country, Keyword, ContactUs

@admin.register(Genre)
class GenreAdmin(admin.ModelAdmin):
    list_display = ('genre_id', 'genre_name')
    search_fields = ('genre_name',)

@admin.register(Country)
class CountryAdmin(admin.ModelAdmin):
    list_display = ('country_id', 'country_name')
    search_fields = ('country_name', 'country_iso_code', 'nationality')

@admin.register(Keyword)
class KeywordAdmin(admin.ModelAdmin):
    list_display = ('keyword_id', 'keyword_name')
    search_fields = ('keyword_name',)

@admin.register(ContactUs)
class ContactUsAdmin(admin.ModelAdmin):
    list_display = ('cu_id', 'contact_name', 'shortened_contact_message',)
    search_fields = ('contact_name', 'contact_email')

    def shortened_contact_message(self, obj):
        # Truncate the message to 10 characters
        if len(obj.contact_message) > 20:
            return obj.contact_message[:20] + '...'
        return obj.contact_message
    shortened_contact_message.short_description = 'Contact Message'

    def change_view(self, request, object_id, form_url='', extra_context=None):
        # Override the change view to display the full message
        extra_context = extra_context or {}
        extra_context['show_full_message'] = True
        return super(ContactUsAdmin, self).change_view(request, object_id, form_url, extra_context)