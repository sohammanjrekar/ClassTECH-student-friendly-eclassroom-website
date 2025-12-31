from django.apps import AppConfig # THIS WAS MISSING

class UsersConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'users'