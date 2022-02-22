from django.http import HttpResponse


def index(request):
    return HttpResponse("<h1>let it be forevis!</h1>")
