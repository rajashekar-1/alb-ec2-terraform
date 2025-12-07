# EC2 Instance 1
resource "aws_instance" "web1" {
  ami                    = "ami-0f00d706c4a80fd93" # Amazon Linux 2023 x86_64 HVM
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public_subnet_1.id
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  user_data = <<EOF
#!/bin/bash
sudo yum install -y httpd
echo "Hello from Server 1" > /var/www/html/index.html
sudo systemctl start httpd
sudo systemctl enable httpd
EOF

  tags = {
    Name = "WebServer1"
  }
}

# EC2 Instance 2
resource "aws_instance" "web2" {
  ami                    = "ami-0f00d706c4a80fd93" # Amazon Linux 2023 x86_64 HVM
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public_subnet_2.id
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  user_data = <<EOF
#!/bin/bash
sudo yum install -y httpd
echo "Hello from Server 2" > /var/www/html/index.html
sudo systemctl start httpd
sudo systemctl enable httpd
EOF

  tags = {
    Name = "WebServer2"
  }
}
