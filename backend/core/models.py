from django.db import models
from django.contrib.auth.models import AbstractUser

class Roles(models.Model):
    class roles(models.IntegerChoices):
        organizador = 1, 'Organizador'
        visitante   = 2, 'Visitante'
        propietario = 3, 'Propietario'

    descripcion = models.IntegerField(choices=roles.choices)

    def __str__(self):
        return self.get_descripcion_display()

class Etiquetas(models.Model):
    class arte(models.IntegerChoices):
        danza   = 1, 'Danza'
        musica  = 2, 'Música'
        pintura = 3, 'Pintura'
        teatro  = 4, 'Teatro'

    formaArte = models.IntegerField(choices=arte.choices)

    def __str__(self):
        return self.get_formaArte_display()

class Usuarios(AbstractUser):
    edad      = models.IntegerField(null=True, blank=True)
    cedula    = models.IntegerField(unique=True, null=True, blank=True)
    telefono  = models.DecimalField(max_digits=10, decimal_places=0, null=True, blank=True)
    descripcion = models.TextField(blank=True)
    rol = models.ForeignKey(Roles, on_delete=models.SET_NULL, null=True, blank=True, related_name="usuarios")

    email = models.EmailField(unique=True, default='')
    username = models.CharField(max_length=150, unique=True, default='')

    # Login con email en lugar de username
    USERNAME_FIELD  = 'email'
    REQUIRED_FIELDS = ['username']

    def __str__(self):
        return self.get_full_name() or self.username

class Eventos(models.Model):
    nombre = models.CharField(max_length=100)
    fecha = models.DateField()
    aforo = models.IntegerField()
    lugar = models.CharField(max_length=100)
    precio = models.DecimalField(max_digits=10, decimal_places=2)
    descripcion = models.TextField(blank=True)
    estado = models.BooleanField()
    horaInicio = models.TimeField()
    horaFinalizacion = models.TimeField()
    numeroReserva = models.DecimalField(max_digits=10, decimal_places=0)
    etiqueta = models.ForeignKey(Etiquetas, on_delete=models.CASCADE, related_name="eventos")

    def __str__(self):
        return self.nombre
    
class Academias(models.Model):
    nombre = models.CharField(max_length=100)
    ubicacion = models.CharField(max_length=100)
    numeroContacto = models.DecimalField(max_digits=10, decimal_places=0)
    correo = models.EmailField(unique=True)
    nit = models.DecimalField(max_digits=10, decimal_places=0, blank=True, null=True)
    etiqueta = models.ForeignKey(Etiquetas, on_delete=models.CASCADE, related_name="academias")
    
    def __str__(self):
        return self.nombre
    