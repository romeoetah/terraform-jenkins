resource "aws_instance" "name" {
  ami             = data.aws_ami.linux2.id
  instance_type   = "t2.medium"
  security_groups = [aws_security_group.jenkins.name]
  key_name        = "calikey000"

  tags = {
    Name = "jenkins-prince"
  }
  user_data = file("jenkins-install.sh")
}