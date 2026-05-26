
from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import *

router = DefaultRouter()
router.register(r'usuarios', UsuarioViewSet) # La URL será /api/usuarios/
router.register(r'academias', AcademiaViewSet)
router.register(r'eventos', EventoViewSet)
router.register(r'etiquetas', EtiquetaViewSet)
router.register(r'roles', RolViewSet)

urlpatterns = [
    path('', include(router.urls)),
    path('login/', login),
]