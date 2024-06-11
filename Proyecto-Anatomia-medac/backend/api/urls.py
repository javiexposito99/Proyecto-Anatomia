from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import CalidadViewSet, InterpretacionViewSet,TipoViewSet, SedeViewSet, NaturalezaViewSet, FormatoViewSet, EstadoViewSet, OrganoViewSet, CodificacionInterpretacionViewsSet, MuestraViewSet, AumentoViewSet, ImagenViewSet, AuthUserViewSet, CreateMuestraView,MuestraDeleteView,RegisterView
router=DefaultRouter()
router.register(r'tipos',TipoViewSet)
router.register(r'sedes',SedeViewSet)
router.register(r'naturalezas',NaturalezaViewSet)
router.register(r'formatos',FormatoViewSet)
router.register(r'estados',EstadoViewSet)
router.register(r'organos',OrganoViewSet)
router.register(r'codificacion_interpretacion',CodificacionInterpretacionViewsSet)
router.register(r'muestras',MuestraViewSet)
router.register(r'aumentos',AumentoViewSet)
router.register(r'imagenes',ImagenViewSet)
router.register(r'usuarios',AuthUserViewSet)
router.register(r'calidades',CalidadViewSet)
router.register(r'interpretaciones',InterpretacionViewSet)
urlpatterns = [
    path('api-auth/',include('rest_framework.urls'),name='rest_framework'),
    path('',include(router.urls)),
    path('muestra/nueva/',CreateMuestraView.as_view(),name='nueva_muestra'),
    path('tipo/delete/<int:pk>/', MuestraDeleteView.as_view(), name='muestra-delete'),
    path('registro/',RegisterView.as_view(), name='registro'),
]
