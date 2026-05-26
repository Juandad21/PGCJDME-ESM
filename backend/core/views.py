from rest_framework import viewsets, permissions
from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework_simplejwt.tokens import RefreshToken
from django.contrib.auth import authenticate
from .models import *
from .serializers import *

class UsuarioViewSet(viewsets.ModelViewSet):
    queryset = Usuarios.objects.all()
    serializer_class = UsuariosSerializers
    permission_classes = [permissions.AllowAny]

class EventoViewSet(viewsets.ModelViewSet):
    queryset = Eventos.objects.all()
    serializer_class = EventosSerializers

    def get_permissions(self):
        if self.action in ['create', 'update', 'partial_update', 'destroy']:
            return [permissions.IsAdminUser()]
        return [permissions.AllowAny()]

class AcademiaViewSet(viewsets.ModelViewSet):
    queryset = Academias.objects.all()
    serializer_class = AcademiasSerializers

    def get_permissions(self):
        if self.action in ['create', 'update', 'partial_update', 'destroy']:
            return [permissions.IsAdminUser()]
        return [permissions.AllowAny()]

class EtiquetaViewSet(viewsets.ModelViewSet):
    queryset = Etiquetas.objects.all()
    serializer_class = EtiquetasSerializers

class RolViewSet(viewsets.ModelViewSet):
    queryset = Roles.objects.all()
    serializer_class = RolesSerializers

@api_view(['POST'])
def login(request):
    correo = request.data.get('email')
    contrasena = request.data.get('password')

    usuario = authenticate(username=correo, password=contrasena)  # ← ya estaba bien

    if usuario is not None:
        refresh = RefreshToken.for_user(usuario)
        return Response({
            'access': str(refresh.access_token),
            'refresh': str(refresh),
            'usuario': {
                'id': usuario.id,
                'nombre': usuario.first_name,
                'email': usuario.email,
                'rol': usuario.rol.descripcion if usuario.rol else None,
                'is_staff': usuario.is_staff,
            }
        })
    
    return Response({'mensaje': 'Correo o contraseña incorrectos'}, status=400)