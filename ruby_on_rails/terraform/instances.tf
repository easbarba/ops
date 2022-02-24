provider "aws" {
  region = "sa-east-1"
}

resource "aws_instance" "ubuntuza" {
  ami                    = "ami-090006f29ecb2d79a"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.instance.id]

  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p ${var.server_port} &
              EOF

  tags = {
    Name = "ubun"
  }
}
