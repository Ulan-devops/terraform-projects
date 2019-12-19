# Create a container
resource "docker_container" "talant_container" {
  image = docker_image.talant_ubuntu.latest
  name  = "talant"
  command = ["sleep", "4800"]
}

resource "docker_image" "talant_ubuntu" {
  name = "ubuntu"
}

resource "docker_image" "my_centos" {
  name = "centos:7"
  
}

resource "docker_container" "talant_docker" {
  image = docker_image.my_centos.name
  name = talant_centos7
  command = ["sleep", "10000"]
}



