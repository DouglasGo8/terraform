

provider "aws" {
    region = "${var.region}"
}


resource "aws_instance" "ami_microinst_solo" {  
    
    ami             = "ami-40d28157"
    instance_type   = "t2.micro"
    vpc_security_group_ids  = ["${aws_security_group.security_group1.id}"]
    
    user_data       = <<-EOF
                    #!/bin/bash
                    echo "Hello, World" > index.html
                    nohup busybox httpd -f -p "${var.server_port}" &
                    EOF
    

    tags {
        Name = "ami-instance-with-terraform"
    }
}

resource "aws_security_group" "security_group1" {
    
    name = "security_group1"
    
    ingress  = {
        from_port   = "${var.server_port}"
        to_port     = "${var.server_port}"
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }  
}
