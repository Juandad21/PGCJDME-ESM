from rest_framework import serializers
from .models import *

class UsuariosSerializers(serializers.ModelSerializer):
    class Meta:
        model = Usuarios
        fields = [
            'id', 'username', 'email',        # de AbstractUser
            'first_name', 'last_name',         # reemplazan nombres/apellidos
            'edad', 'cedula', 'telefono',
            'descripcion', 'rol',
            'is_staff',                        # para saber si es admin en Flutter
        ]
        extra_kwargs = {
            'password': {'write_only': True}   # nunca devuelve la contraseña
        }

    def create(self, validated_data):
        # Usa create_user para que la contraseña quede hasheada
        password = validated_data.pop('password', None)
        usuario = super().create(validated_data)
        if password:
            usuario.set_password(password)
            usuario.save()
        return usuario

class RolesSerializers(serializers.ModelSerializer):
    class Meta:
        model = Roles
        fields = '__all__'

class EtiquetasSerializers(serializers.ModelSerializer):
    class Meta:
        model = Etiquetas
        fields = '__all__'

class EventosSerializers(serializers.ModelSerializer):
    class Meta:
        model = Eventos
        fields = '__all__'

class AcademiasSerializers(serializers.ModelSerializer):
    class Meta:
        model = Academias
        fields = '__all__'