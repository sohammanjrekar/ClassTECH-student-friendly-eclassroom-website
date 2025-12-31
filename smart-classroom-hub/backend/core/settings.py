import os
import sys
from pathlib import Path

# Paths
BASE_DIR = Path(__file__).resolve().parent.parent
# Add the 'apps' folder to Python path so we can import apps easily
sys.path.insert(0, os.path.join(BASE_DIR, 'apps'))

# Security
SECRET_KEY = 'django-insecure-r_i5&r)y67^)sru&j!y(=3ks-b1*qr1$)_@gz&+qblz39=obj5'
DEBUG = True
ALLOWED_HOSTS = ['*'] # Change this for production

# 1. CORE APP ORDERING
INSTALLED_APPS = [
    'daphne',  # MUST be at the very top for WebSockets/Chat to work
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    
    # Third Party
    'corsheaders', 
    'rest_framework',

    # 2. YOUR MODULAR APPS (Updated to match your screenshot)
    'users',
    'student',
    'teacher',
    'classroom',
    'attendance',
    'grievance',   # Successfully renamed from complaint!
    'interaction', # Your new Live Chat/Shy Mode app
    'quiz',
    'resources',
    'analytics',
    'gamification',
    'sync',
    'whiteboard',
]

MIDDLEWARE = [
    'corsheaders.middleware.CorsMiddleware', # Must be at the top
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

# Next.js / CORS Settings
CORS_ALLOW_ALL_ORIGINS = True # Set to False and add specific URLs in production

ROOT_URLCONF = 'core.urls'

# 3. REAL-TIME CONFIGURATION
# This tells Django to use the Daphne server for Chat/WebSockets
WSGI_APPLICATION = 'core.wsgi.application'
ASGI_APPLICATION = 'core.asgi.application' # Add this line
TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [BASE_DIR / 'templates'],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

# Database (PostgreSQL)
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'classtech',
        'USER': 'soham',
        'PASSWORD': '1234',
        'HOST': 'localhost',
        'PORT': '5432',
    }
}

# Redis Cache for Bunk-Proof logic
CACHES = {
    "default": {
        "BACKEND": "django_redis.cache.RedisCache",
        "LOCATION": "redis://127.0.0.1:6379/1",
        "OPTIONS": {
            "CLIENT_CLASS": "django_redis.client.DefaultClient",
        }
    }
}

# Internationalization
LANGUAGE_CODE = 'en-us'
TIME_ZONE = 'UTC'
USE_I18N = True
USE_TZ = True

# Static & Media Files
STATIC_URL = 'static/'
STATICFILES_DIRS = [BASE_DIR / "static"]
MEDIA_URL = '/media/'
MEDIA_ROOT = BASE_DIR / 'media'

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'

AUTH_USER_MODEL = 'users.User' # Tell Django to use your Custom User