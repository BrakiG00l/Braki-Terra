resource "aws_instance" "InstaciaTerra" {
  ami           = "ami-08b5b3a93ed654d19"
  instance_type = "t2.micro"

  tags = {
    Name = "Instancia 2"
  }
}