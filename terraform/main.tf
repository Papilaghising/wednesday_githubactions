resource "aws_instance" "ec2_instance" {
  ami                         = var.ami_id
  subnet_id                   = var.subnet_id
  instance_type               = var.instance_type
  associate_public_ip_address = true
  key_name                    = "papila-intern"
  iam_instance_profile = "intern-ujwal"
  tags = {
    Name      = "papila"
    silo      = "intern"
    project   = "terraform"
    terraform = true
  }
}

resource "aws_s3_bucket" "ghising" {
  bucket = "ghising"
  force_destroy = true
    tags = {
    Name      = "papila"
    silo      = "intern"
    project   = "terraform"
    terraform = true 
    }
}
