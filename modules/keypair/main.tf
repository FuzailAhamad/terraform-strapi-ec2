resource "tls_private_key" "this" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "this" {
  key_name   = "terraform-strapi-key"
  public_key = tls_private_key.this.public_key_openssh
}

resource "local_file" "pem" {
  content         = tls_private_key.this.private_key_pem
  filename        = "${path.module}/terraform-strapi-key.pem"
  file_permission = "0400"
}
