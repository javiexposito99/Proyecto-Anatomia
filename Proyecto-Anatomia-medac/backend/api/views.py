from rest_framework.views import APIView
from rest_framework.status import HTTP_400_BAD_REQUEST, HTTP_201_CREATED
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework.response import Response
from rest_framework.viewsets import ModelViewSet
from rest_framework.permissions import IsAuthenticated, AllowAny
#from django.shorcuts import 
from .models import Tipo, Sede, Naturaleza, Formato, Estado, Organo, CodificacionInterpretacion, Muestra, Aumento, Imagen, User,Calidad,Interpretacion
from .serializers import TipoSerializer, SedeSerializer, NaturalezaSerializer, FormatoSerializer, EstadoSerializer, OrganoSerializer, CodificacionInterpretacionSerializer, MuestraSerializer, AumentoSerializer, ImagenSerializer, AuthUserSerializer, MuestraFilter, CodificacionInterpretacionFliter, ImagenFilter,CalidadSerializer,InterpretacionSerializer
class TipoViewSet (ModelViewSet):
    queryset=Tipo.objects.all()
    serializer_class=TipoSerializer
    #permission_classes=[IsAuthenticated]
class SedeViewSet (ModelViewSet):
    queryset=Sede.objects.all()
    serializer_class=SedeSerializer
    #permission_classes=[IsAuthenticated]
class NaturalezaViewSet (ModelViewSet):
    queryset=Naturaleza.objects.all()
    serializer_class=NaturalezaSerializer
    #permission_classes=[IsAuthenticated]
class FormatoViewSet (ModelViewSet):
    queryset=Formato.objects.all()
    serializer_class=FormatoSerializer
    #permission_classes=[IsAuthenticated]
class EstadoViewSet (ModelViewSet):
    queryset=Estado.objects.all()
    serializer_class=EstadoSerializer
    #permission_classes=[IsAuthenticated]
class OrganoViewSet (ModelViewSet):
    queryset=Organo.objects.all()
    serializer_class=OrganoSerializer
    #permission_classes=[IsAuthenticated]
class CodificacionInterpretacionViewsSet (ModelViewSet):
    queryset=CodificacionInterpretacion.objects.all()
    serializer_class=CodificacionInterpretacionSerializer
    filterset_class=CodificacionInterpretacionFliter
    #permission_classes=[IsAuthenticated]
    filter_backends=[DjangoFilterBackend]
class MuestraViewSet (ModelViewSet):
    queryset=Muestra.objects.all()
    serializer_class=MuestraSerializer
    filterset_class=MuestraFilter
    #permission_classes=[IsAuthenticated]
    filter_backends=[DjangoFilterBackend]
class CreateMuestraView (APIView):
    queryset=Muestra.objects.all()
    serializer_class=MuestraSerializer
    permission_classes=[IsAuthenticated]
    def post (self,request):
        data = request.data.copy()
        imagenes = request.FILES.getlist('imagenes')
        zooms = request.data.getlist('zooms')
        fecha_recepcion=request.data.get('fecha_recepcion')
        naturaleza_code=request.data.get('naturaleza')
        formato_f=request.data.get('formato')
        organo_o=request.data.get('organo')
        sede_code=request.data.get('sede')
        estado_e=request.data.get('estado')
        username_u=request.data.get('username')
        calidad_c=request.data.get('calidad')
        interpretacion_i=request.data.get('interpretacion')
        try:
            naturaleza=get_object_or_404(Naturaleza, codigo=naturaleza_code)
            formato=get_object_or_404(Formato, formato=formato_f)
            organo=get_object_or_404(Organo, organo=organo_o)
            sede=get_object_or_404(Sede, codigo=sede_code)
            estado=get_object_or_404(Estado, estado=estado_e)
            username=get_object_or_404(User, username=username_u)
            calidad=get_object_or_404(Calidad, calidad=calidad_c)
            interpretacion=get_object_or_404(Interpretacion,calidad=interpretacion_c)
            muestra=Muestra.objects.create(
                codigo=data.get('codigo'),
                fecha_recepcion=fecha_recepcion,
                naturaleza=naturaleza, 
                formato=formato, 
                organo=organo,
                sede=sede,
                estado=estado,
                username=username,
                calidad=calidad,
                interpretacion=interpretacion)
            for i, imagen in enumerate(imagenes):
                zoom = zooms[i] if i < len(zooms) else 'x4'  # Default zoom if not provided
                Imagen.objects.create(muestra=muestra, imagen=imagen, zoom=zoom)
            return Response({"message":"La muestra ha sido creada"},status=HTTP_201_CREATED)
        except Exception as e:
            return Response({"error":str(e)},status=500)
class AumentoViewSet (ModelViewSet):
    queryset=Aumento.objects.all()
    serializer_class=AumentoSerializer
    #permission_classes=[IsAuthenticated]
class ImagenViewSet (ModelViewSet):
    queryset=Imagen.objects.all()
    serializer_class=ImagenSerializer
    filterset_class=ImagenFilter
    #permission_classes=[IsAuthenticated]
    filter_backends=[DjangoFilterBackend]
class AuthUserViewSet (ModelViewSet):
    queryset=User.objects.all()
    serializer_class=AuthUserSerializer
    #permission_classes=[IsAuthenticated]
class RegisterView(APIView):
    queryset=User.objects.all()
    serializer=AuthUserSerializer
    permissions_classes=[AllowAny]
    def post(self, request):
        username = request.data.get('username')
        password = request.data.get('password')
        if not username or not password:
            return Response({"error": "Username and password are required"}, status=HTTP_400_BAD_REQUEST)
        if User.objects.filter(username=username).exists():
            return Response({"error": "Username already exists"}, status=HTTP_400_BAD_REQUEST)
        user = User.objects.create_user(username=username, password=password)
        return Response({"message": "User created successfully"}, status=HTTP_201_CREATED)
class MuestraDeleteView(APIView):
    #permission_classes = [IsAuthenticated]
    def delete(self, request, pk):
        try:
            tipo_obj = Muestra.objects.get(id=pk)
        except Muestra.DoesNotExist:
            return Response({"error": "Tipo not found"}, status=HTTP_404_NOT_FOUND)
        tipo_obj.delete()
        return Response(status=HTTP_204_NO_CONTENT)
class CalidadViewSet(ModelViewSet):
    queryset=Calidad.objects.all()
    serializer_class=CalidadSerializer
class InterpretacionViewSet(ModelViewSet):
    queryset=Interpretacion.objects.all()
    serializer_class=InterpretacionSerializer
