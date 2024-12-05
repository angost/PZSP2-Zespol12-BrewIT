from django.contrib.auth.models import User
from rest_framework.views import APIView
from rest_framework.response import Response
from django.http import Http404
from brewit_api.serializers import UserSerializer
from rest_framework.reverse import reverse
from rest_framework.decorators import api_view

# for development purposes
@api_view(['GET'])
def api_root(request, format=None):
    return Response({
        'users': reverse('brewit_api:user-list', request=request, format=format),
    })

class UserList(APIView):
    def get(self, request, format=None):
        users = User.objects.all()
        serializer = UserSerializer(users, many=True, context={'request': request})
        return Response(serializer.data)

class UserDetail(APIView):
    def get_object(self, pk):
        try:
            return User.objects.get(pk=pk)
        except User.DoesNotExist:
            raise Http404

    def get(self, request, pk, format=None):
        user = self.get_object(pk)
        serializer = UserSerializer(user, context={'request': request})
        return Response(serializer.data)
