# Provider
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.16.0"
    }
  }
}

provider "docker" {} # host = "unix:///var/run/docker.sock"

# Grab image
resource "docker_image" "django_image" {
  name = "easbarbosa/django_app:latest"
}

# Run container
resource "docker_container" "django_container" {
  name  = "django_app"
  image = docker_image.django_image.latest
  ports {
    internal = 8000
    external = 8080
  }
}
