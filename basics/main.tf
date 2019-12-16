# Download the lates ghost image
resource "docker_image" "image_id" {
    name = "ghost:latest"
}
