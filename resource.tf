resource "aws_instance" "my_ec2" {
	ami = "ami-0b6c6ebed2801a5cb"
	instance_type = var.instance_type
	subnet_id = "subnet-052be6ed50f932a9e"
}
