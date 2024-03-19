resource "aws_instance" "Web" {

    ami="ami-0f3c7d07486cad139"  
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.roboshop_all.id]
    tags = {
        Name = "roboshop"
     }
  
}

resource "aws_security_group" roboshop_all{
    name="roboshop-all-aws"
    description = "allow TLS inbound traffic"

    ingress{
        description = "allow all ports"
        from_port   ="0"
        to_port     ="0"
        protocol    ="tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
   # ipv6_cidr_blocks = ["::/0"]
  }
    tags = {
    Name = "roboshop-all-aws"
  }
}