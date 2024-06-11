from django.contrib.auth.models import User
from rest_framework.serializers import ModelSerializer, ImageField, ListField
from django_filters.rest_framework import FilterSet
from .models import Tipo,Sede,Naturaleza,Formato,Estado,Organo,CodificacionInterpretacion,Muestra,Aumento,Imagen,Calidad,Interpretacion
class TipoSerializer(ModelSerializer):
    class Meta:
        model=Tipo
        fields=['tipo']
class SedeSerializer (ModelSerializer):
    class Meta:
        model=Sede
        fields=["sede","codigo"]
class NaturalezaSerializer (ModelSerializer):
    class Meta:
        model=Naturaleza
        fields=["codigo","naturaleza"]
class FormatoSerializer (ModelSerializer):
    class Meta:
        model=Formato
        fields=["formato"]
class EstadoSerializer (ModelSerializer):
    class Meta:
        model=Estado
        fields=["estado","comentario"]
class OrganoSerializer (ModelSerializer):
    class Meta:
        model=Organo
        fields=["organo","codigo"]
class CodificacionInterpretacionFliter (FilterSet):
    class Meta:
        model=CodificacionInterpretacion
        fields={"organo":["exact"],"naturaleza":["exact"],"tipo":["exact"],"codigo":["exact"]}
class CodificacionInterpretacionSerializer (ModelSerializer):
    class Meta:
        model=CodificacionInterpretacion
        fields=["organo","naturaleza","tipo","codigo","descripcion"]
class MuestraFilter (FilterSet):
    class Meta:
        model=Muestra
        fields={"naturaleza":["exact"],"formato":["exact"],"sede":["exact"],"organo":["exact"],"estado":["exact"],"username":["exact"], "calidad":["exact"], "interpretacion":["exact"]}
class AumentoSerializer (ModelSerializer):
    class Meta:
        model=Aumento
        fields=["zoom"]
class ImagenFilter (FilterSet):
    class Meta:
        model=Imagen
        fields={"zoom":["exact"], "muestra":["exact"]}
class ImagenSerializer (ModelSerializer):
    class Meta:
        model=Imagen
        fields=["imagen","zoom"]
class AuthUserSerializer (ModelSerializer):
    class Meta:
        model=User
        fields=["username","password"]
class CalidadSerializer (ModelSerializer):
    class Meta:
	    model=Calidad
	    fields=["codigo", "descripcion"]
class InterpretacionSerializer (ModelSerializer):
    class Meta:
        model=Interpretacion
        fields=["codigo","descripcion"]
class MuestraSerializer(ModelSerializer):
    imagenes = ImagenSerializer(many=True, read_only=True)

    class Meta:
        model = Muestra
        fields = [
            'codigo', 'fecha_recepcion', 'naturaleza', 'formato', 'organo', 
            'sede', 'estado', 'username', 'calidad', 'interpretacion', 
            'imagenes'
        ]
        
    