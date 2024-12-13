from django.urls import path
from brewit_api import views

app_name = 'brewit_api'

urlpatterns = [
    path('',
         views.api_root,
         name='api-root'), # for development purposes
    path('users/',
         views.AccountList.as_view(),
         name='user-list'),
    path('users/<int:pk>/',
         views.AccountDetail.as_view(),
         name='user-detail'),
    path('login/',
         views.Login.as_view(),
         name='login'),
    path('register/',
          views.Register.as_view(),
          name='register'),
    path('logout/',
          views.Logout.as_view(),
          name='logout'),
    path('sectors/',
          views.SectorList.as_view(),
          name='sector-list'),
    path('sectors/<int:pk>/',
          views.SectorDetail.as_view(),
          name='sector-detail'),
    path('equipment/',
          views.EquipmentList.as_view(),
          name='equipment-list'),
    path('equipment/<int:pk>/',
          views.EquipmentDetail.as_view(),
          name='equipment-detail'),

]
