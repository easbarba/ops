provider "aws" {
  region = "sa-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-090006f29ecb2d79a"
  instance_type = "t2.micro"
  user_data     = <<-EOF
                #!/bin/bash
                echo "Hello, World" > index.html
                nohup busybox httpd -f -p 8080 &
                EOF

  tags = {
    Name = "terraform-example"
  }
}

resource "aws_security_group" "instance" {
  name = "terraform-example-instance"
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}