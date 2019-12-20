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

output "talant_nginx_ip" {
  value = docker_container.talant_nginx_container.ip_address
  description = "Talant nginx container ip"
}


