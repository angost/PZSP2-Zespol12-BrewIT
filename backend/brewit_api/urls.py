from django.urls import path
from brewit_api import views

app_name = 'brewit_api'

urlpatterns = [
    path('',
         views.api_root,
         name='api-root'), # for development purposes
    path('users/',
         views.UserList.as_view(),
         name='user-list'),
    path('users/<int:pk>/',
         views.UserDetail.as_view(),
         name='user-detail'),
]
