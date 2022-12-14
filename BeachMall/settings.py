"""
Django settings for BeachMall project.

Generated by 'django-admin startproject' using Django 4.1.

For more information on this file, see
https://docs.djangoproject.com/en/4.1/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/4.1/ref/settings/
"""

from pathlib import Path
import os, datetime
# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent

SESSION_EXPIRE_AT_BROWSER_CLOSE = True

MEDIA_URL = "/media/"
MEDIA_ROOT = os.path.join(BASE_DIR, "media")

# # 로그인 성공 후 이동하는 URL
# LOGIN_REDIRECT_URL = "/"
# # 로그아웃 성공 후 이동하는 URL
# LOGOUT_REDIRECT_URL = "/"

LOGGING = {
    "version" : 1,
    "disable_existing_loggers" : False,
    "formatters" : {
        "format1" : {
            "format" : "[%(asctime)s],%(levelname)s,[%(name)s:%(lineno)s],%(message)s",
            "datefmt" : "%Y-%m-%d %H:%M:%S", 
        },
        "format2" : {
            "format" :  "%(levelname)s %(message)s",
        },
    },
    "handlers" : {
        "cartfile" : {
            "level" : "INFO",
            "class" : "logging.handlers.RotatingFileHandler",
            "filename" : os.path.join(BASE_DIR, "log/cartlog.log"),
            "encoding" : "utf-8",
            "maxBytes" : 1024 * 1024 * 5,
            "backupCount" : 5,
            "formatter" : "format1",
        },
        "memberfile" : {
            "level" : "INFO",
            "class" : "logging.handlers.RotatingFileHandler",
            "filename" : os.path.join(BASE_DIR, "log/memberlog.log"),
            "encoding" : "utf-8",
            "maxBytes" : 1024 * 1024 * 5,
            "backupCount" : 5,
            "formatter" : "format1",
        },
        "noticeboardfile" : {
            "level" : "INFO",
            "class" : "logging.handlers.RotatingFileHandler",
            "filename" : os.path.join(BASE_DIR, "log/noticeboardlog.log"),
            "encoding" : "utf-8",
            "maxBytes" : 1024 * 1024 * 5,
            "backupCount" : 5,
            "formatter" : "format1",
        },
        "orderfile" : {
            "level" : "INFO",
            "class" : "logging.handlers.RotatingFileHandler",
            "filename" : os.path.join(BASE_DIR, "log/orderlog.log"),
            "encoding" : "utf-8",
            "maxBytes" : 1024 * 1024 * 5,
            "backupCount" : 5,
            "formatter" : "format1",
        },
        "productfile" : {
            "level" : "INFO",
            "class" : "logging.handlers.RotatingFileHandler",
            "filename" : os.path.join(BASE_DIR, "log/productlog.log"),
            "encoding" : "utf-8",
            "maxBytes" : 1024 * 1024 * 5,
            "backupCount" : 5,
            "formatter" : "format1",
        },
        "qnaboardfile" : {
            "level" : "INFO",
            "class" : "logging.handlers.RotatingFileHandler",
            "filename" : os.path.join(BASE_DIR, "log/qnaboardlog.log"),
            "encoding" : "utf-8",
            "maxBytes" : 1024 * 1024 * 5,
            "backupCount" : 5,
            "formatter" : "format1",
        },
        "recommendfile" : {
            "level" : "INFO",
            "class" : "logging.handlers.RotatingFileHandler",
            "filename" : os.path.join(BASE_DIR, "log/recommendlog.log"),
            "encoding" : "utf-8",
            "maxBytes" : 1024 * 1024 * 5,
            "backupCount" : 5,
            "formatter" : "format1",
        },
        "refundfile" : {
            "level" : "INFO",
            "class" : "logging.handlers.RotatingFileHandler",
            "filename" : os.path.join(BASE_DIR, "log/refundlog.log"),
            "encoding" : "utf-8",
            "maxBytes" : 1024 * 1024 * 5,
            "backupCount" : 5,
            "formatter" : "format1",
        },
        "searchfile" : {
            "level" : "INFO",
            "class" : "logging.handlers.RotatingFileHandler",
            "filename" : os.path.join(BASE_DIR, "log/searchlog.log"),
            "encoding" : "utf-8",
            "maxBytes" : 1024 * 1024 * 5,
            "backupCount" : 5,
            "formatter" : "format1",
        },
        "surveyfile" : {
            "level" : "INFO",
            "class" : "logging.handlers.RotatingFileHandler",
            "filename" : os.path.join(BASE_DIR, "log/surveylog.log"),
            "encoding" : "utf-8",
            "maxBytes" : 1024 * 1024 * 5,
            "backupCount" : 5,
            "formatter" : "format1",
        },
        "wishlistfile" : {
            "level" : "INFO",
            "class" : "logging.handlers.RotatingFileHandler",
            "filename" : os.path.join(BASE_DIR, "log/wishlistlog.log"),
            "encoding" : "utf-8",
            "maxBytes" : 1024 * 1024 * 5,
            "backupCount" : 5,
            "formatter" : "format1",
        },
        "console" : {
            "level" : "DEBUG",
            "class" : "logging.StreamHandler",
            "formatter" : "format2",
        },
    },
    "loggers" : {
        "django" : {
            "handlers" : ["console"],
            "propagate" : True,
            "level" : "WARNING",
        },
        "django.request" : {
            "handlers" : ["console"],
            "propagate" : True,
            "level" : "WARNING",
        },
        "cart" : {
            "handlers" : ["cartfile"],
            "propagate" : True,
            "level" : "INFO",
        },
        "member" : {
            "handlers" : ["memberfile"],
            "propagate" : True,
            "level" : "INFO",
        },
        "noticeboard" : {
            "handlers" : ["noticeboardfile"],
            "propagate" : True,
            "level" : "INFO",
        },
        "order" : {
            "handlers" : ["orderfile"],
            "propagate" : True,
            "level" : "INFO",
        },
        "product" : {
            "handlers" : ["productfile"],
            "propagate" : True,
            "level" : "INFO",
        },
        "qnaboard" : {
            "handlers" : ["qnaboardfile"],
            "propagate" : True,
            "level" : "INFO",
        },
        "recommend" : {
            "handlers" : ["recommendfile"],
            "propagate" : True,
            "level" : "INFO",
        },
        "refund" : {
            "handlers" : ["refundfile"],
            "propagate" : True,
            "level" : "INFO",
        },
        "search_app" : {
            "handlers" : ["searchfile"],
            "propagate" : True,
            "level" : "INFO",
        },
        "survey" : {
            "handlers" : ["surveyfile"],
            "propagate" : True,
            "level" : "INFO",
        },
        "wishlist" : {
            "handlers" : ["wishlistfile"],
            "propagate" : True,
            "level" : "INFO",
        },
    },
}

# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/4.1/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'django-insecure-d!no9n&p2$i0tx7-_zdoj^u&*7s&21yy#u^q20cd(h(dzij3!6'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = ["localhost", "127.0.0.1", "192.168.0.2"]


# Application definition

INSTALLED_APPS = [
    'mathfilters',
    'django.contrib.humanize',
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    "member.apps.MemberConfig",
    "product.apps.ProductConfig",
    "cart.apps.CartConfig",
    "wishlist.apps.WishlistConfig",
    "order.apps.OrderConfig",
    "recommend.apps.RecommendConfig",
    "survey.apps.SurveyConfig",
    "refund.apps.RefundConfig",
    "reviewboard.apps.ReviewboardConfig",
    "noticeboard.apps.NoticeboardConfig",
    "qnaboard.apps.QnaboardConfig",
    'search_app.apps.SearchAppConfig',
]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'BeachMall.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [os.path.join(BASE_DIR, "templates"), os.path.join(BASE_DIR, 'search', 'templates/')],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'BeachMall.wsgi.application'


# Database
# https://docs.djangoproject.com/en/4.1/ref/settings/#databases

# DATABASES = {
#     'default': {
#         'ENGINE': 'django.db.backends.sqlite3',
#         'NAME': BASE_DIR / 'db.sqlite3',
#     }
# }

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'beachmall',
        'USER': 'bit',
        'PASSWORD': 'bit',
        'HOST': 'localhost',
        'PORT': '3306',
    }
}


# Password validation
# https://docs.djangoproject.com/en/4.1/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/4.1/topics/i18n/

LANGUAGE_CODE = 'ko-kr'

TIME_ZONE = 'Asia/Seoul'

USE_I18N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/4.1/howto/static-files/

STATIC_URL = 'static/'
STATICFILES_DIRS = [
    os.path.join(BASE_DIR, "static")
    ]

# Default primary key field type
# https://docs.djangoproject.com/en/4.1/ref/settings/#default-auto-field

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'
