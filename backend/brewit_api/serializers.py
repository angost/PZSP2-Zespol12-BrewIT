from .models import Account, BrewerySelectors, Brewery, Equipment, Sector
from rest_framework import serializers
from django.contrib.auth import get_user_model
from django.contrib.auth.models import Group

class AccountSerializer(serializers.ModelSerializer):
    class Meta:
        model = get_user_model()
        fields = ['id', 'email', 'password']
        extra_kwargs = {'password': {'write_only': True}}

    def create(self, validated_data):
        print(validated_data)
        user = get_user_model().objects.create_user(email=validated_data['email'],
                                                    password=validated_data['password'])
        return user

class RegistrationDataSerializer(serializers.Serializer):
    email = serializers.EmailField()
    password = serializers.CharField()
    password2 = serializers.CharField()
    selector = serializers.CharField()
    name = serializers.CharField()
    nip = serializers.CharField()
    water_ph = serializers.DecimalField(decimal_places=1, max_digits=3)

    def validate_email(self, value):
        if get_user_model().objects.filter(email=value).exists():
            raise serializers.ValidationError("Email already exists")
        return value

    def validate_selector(self, value):
        if value not in [el.value for el in BrewerySelectors]:
            raise serializers.ValidationError("Invalid selectror")
        return value

    def validate(self, data):
        if data['password'] != data['password2']:
            raise serializers.ValidationError("Passwords do not match")
        return data

    def create(self, validated_data):
        account = get_user_model().objects.create_user(email=validated_data['email'],
                                                       password=validated_data['password'])
        if validated_data['selector'] == BrewerySelectors.PRODUCTION.value:
            group, _ = Group.objects.get_or_create(name='Production_Brewery')
            account.groups.add(group)
        else:
            group, _ = Group.objects.get_or_create(name='Contract_Brewery')
            account.groups.add(group)
        brewery = Brewery.objects.create(selector=validated_data['selector'],
                                         name=validated_data['name'],
                                         nip=validated_data['nip'],
                                         water_ph=validated_data['water_ph'],
                                         account=account)
        brewery.save()
        return (account, brewery)


class SectorSerializer(serializers.ModelSerializer):
    class Meta:
        model = Sector
        fields = ['sector_id', 'name', 'allows_bacteria']


class EquipmentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Equipment
        fields = '__all__'




