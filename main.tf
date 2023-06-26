resource "aws_instance" "windows_ec2" {
  count         = 10
  ami           = "ami-04132f301c3e4f138"
  instance_type = "t2.micro"
  tags = {
    Name = "windows-instance-${count.index + 1}"
  }
}
