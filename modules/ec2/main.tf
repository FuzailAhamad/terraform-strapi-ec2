resource "aws_instance" "this" {
  ami           = "ami-0f5ee92e2d63afc18"   # Amazon Linux 2 (ap-south-1)
  instance_type = "t2.micro"

  key_name = var.key_name

  vpc_security_group_ids = [var.security_group_id]

  tags = {
    Name = "terraform-strapi-ec2"
  }
}
