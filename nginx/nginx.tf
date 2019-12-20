resource "docker_image" "talant_nginx_image" {
    name = "nginx:alpine"
}

resource "docker_container" "talant_nginx_container" {
  image = docker_image.talant_nginx_image.name
  name = "talant_nginx"
  ports  {
      internal = "80"
      external = "30080"
  }
  
}

