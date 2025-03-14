resource "aws_instance" "server1" {
  ami           = "ami-04aa00acb1165b32a"
  instance_type = "t2.micro"
  key_name      = "webserver"
  user_data     = file("server.sh")
  tags ={
    Name = "utc-app.inst"
  }
}