from rest_framework import permissions

class IsProductionBrewery(permissions.BasePermission):
    message = 'You must be a Production Brewery to access this endpoint.'
    def has_permission(self, request, view):
        return request.user.groups.filter(name='Production_Brewery').exists()