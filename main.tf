provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "vm_3" {
  ami                    = "ami-0ad21ae1d0696ad58"
  instance_type          = "t2.medium"
  key_name               = "new" # The key_name should be the name of your key pair, not the file name
  subnet_id              = "subnet-00e5483cd17ed530d"
  vpc_security_group_ids = ["sg-0f9084fa653acbfda"] # Use a list for security group IDs
  associate_public_ip_address = true

  tags = {
    Name = "production" # Use 'Name' for standard tag key
  }
}
