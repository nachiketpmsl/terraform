resource "aws_instance" "myec2" {
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = "t3.micro"
  subnet_id     = "subnet-052be6ed50f932a9e"
}
