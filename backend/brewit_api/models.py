# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = True` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models
from django.conf import settings
from django.contrib.auth.models import AbstractUser
from django.utils.translation import gettext_lazy as _
from .managers import CustomUserManager
from enum import Enum

class BrewerySelectors(str, Enum):
    PRODUCTION = 'PROD'
    CONTRACT = 'CONTR'


class Account(AbstractUser):
    username = None
    email = models.EmailField(_("email address"), unique=True)

    USERNAME_FIELD = "email"
    REQUIRED_FIELDS = []

    objects = CustomUserManager()

    def __str__(self):
        return self.email


class BeerType(models.Model):
    beer_type_id = models.AutoField(primary_key=True)
    name = models.CharField(unique=True, max_length=32)
    uses_bacteria = models.BooleanField()

    class Meta:
        managed = True
        db_table = 'beer_type'


class Brewery(models.Model):
    brewery_id = models.AutoField(primary_key=True)
    selector = models.CharField(max_length=10)
    name = models.CharField(max_length=128)
    nip = models.CharField(max_length=10, blank=True, null=True)
    water_ph = models.DecimalField(max_digits=3, decimal_places=1, blank=True, null=True)
    account = models.ForeignKey(settings.AUTH_USER_MODEL, models.DO_NOTHING, related_name='breweries')

    class Meta:
        managed = True
        db_table = 'brewery'


class Sector(models.Model):
    sector_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=32)
    allows_bacteria = models.BooleanField()

    class Meta:
        managed = True
        db_table = 'sector'


class Equipment(models.Model):
    equipment_id = models.AutoField(primary_key=True)
    selector = models.CharField(max_length=10)
    capacity = models.IntegerField()
    name = models.CharField(max_length=32)
    daily_price = models.DecimalField(max_digits=10, decimal_places=2)
    description = models.CharField(max_length=512, blank=True, null=True)
    min_temperature = models.DecimalField(max_digits=5, decimal_places=2, blank=True, null=True)
    max_temperature = models.DecimalField(max_digits=5, decimal_places=2, blank=True, null=True)
    brewery = models.ForeignKey(Brewery, models.DO_NOTHING)
    sector = models.ForeignKey('Sector', models.DO_NOTHING)

    class Meta:
        managed = True
        db_table = 'equipment'


class EquipmentReservation(models.Model):
    selector = models.CharField(max_length=10)
    start_date = models.DateTimeField()
    end_date = models.DateTimeField()
    equipment = models.ForeignKey(Equipment, models.DO_NOTHING)
    reservation_id = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'equipment_reservation'


class Recipe(models.Model):
    recipe_id = models.AutoField(primary_key=True)
    recipe_body = models.CharField(max_length=2048, blank=True, null=True)
    beer_type_beer = models.ForeignKey(BeerType, models.DO_NOTHING)
    contract_brewery_brewery = models.ForeignKey(Brewery, models.DO_NOTHING)

    class Meta:
        managed = True
        db_table = 'recipe'


class Reservation(models.Model):
    reservation_id = models.AutoField(primary_key=True)
    price = models.IntegerField()
    brew_size = models.IntegerField()
    authorised_workers = models.CharField(max_length=512, blank=True, null=True)
    production_brewery = models.ForeignKey(Brewery, models.DO_NOTHING)
    contract_brewery = models.ForeignKey(Brewery, models.DO_NOTHING, related_name='reservation_contract_brewery_set')

    class Meta:
        managed = True
        db_table = 'reservation'


class ExecutionLog(models.Model):
    log_id = models.AutoField(primary_key=True)
    start_date = models.DateTimeField()
    end_date = models.DateTimeField(blank=True, null=True)
    is_successful = models.BooleanField(blank=True, null=True)
    log = models.CharField(max_length=2048, blank=True, null=True)
    recipe = models.ForeignKey('Recipe', models.DO_NOTHING)
    reservation = models.ForeignKey('Reservation', models.DO_NOTHING)

    class Meta:
        managed = True
        db_table = 'execution_log'


class Packagingtype(models.Model):
    packaging_type_id = models.AutoField(primary_key=True)
    name = models.CharField(unique=True, max_length=32)

    class Meta:
        managed = True
        db_table = 'packagingtype'


class Vatpackaging(models.Model):
    vat_packaging_id = models.AutoField(primary_key=True)
    equipment = models.ForeignKey(Equipment, models.DO_NOTHING)
    packaging_type = models.ForeignKey(Packagingtype, models.DO_NOTHING)

    class Meta:
        managed = True
        db_table = 'vatpackaging'
