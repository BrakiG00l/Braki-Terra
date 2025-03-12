resource "aws_instance" "Mi primer instancia " {
  ami           = "ami-08b5b3a93ed654d19"
  instance_type = "t2.micro"

  tags = {
    Name = "Instancia 1"
  }
}