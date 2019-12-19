# Create a container
resource "docker_container" "talant_container" {
  image = docker_image.talant_ubuntu.latest
  name  = "talant"
  command = ["/usr/bin/sleep", "4800"]
}

resource "docker_image" "talant_ubuntu" {
  name = "ubuntu"
}