# define variables
variable "image_name" {
  default = "ghost:latest"
  description = "Image for container"
}

variable "container_name" {
  default = "talant_container1"
  description = "Name for container"
}

variable "ext_port" {
  default = "80"
  description = "External port"
}



# pull docker image
resource "docker_image" "talant_nginx_image" {
    name = var.image_name
}

# create a container off of pulled image
resource "docker_container" "talant_nginx_container" {
  image = docker_image.talant_nginx_image.name
  name = "talant_nginx"
  ports  {
      internal = "80"
      external = "30080"
  }
  
}

# Set outputs 
output "talant_nginx_ip" {
  value = docker_container.talant_nginx_container.ip_address
  description = "Talant nginx container ip"
}

output "talant_container_name" {
  value = docker_container.talant_nginx_container.name
  description = "Talant nginx container ip"
}


