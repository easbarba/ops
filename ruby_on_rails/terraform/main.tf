provider "aws" {
  region = "sa-east-1"
}

resource "aws_instance" "ubuntuza" {
  ami           = "ami-090006f29ecb2d79a"
  instance_type = "t2.micro"

  tags = {
    name = "ubun"
  }
}
