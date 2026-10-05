security_group_rules = {
  alb = {

    security_group_id = "sg-0258bdfecc9dfd70c"

    ingress_rules = {
      https = {
        from_port   = 443
        to_port     = 443
        ip_protocol = "tcp"
        cidr_ipv4   = "0.0.0.0/0"
        description = "Allow HTTPS traffic from the Internet"
      }
      http = {
        from_port   = 80
        to_port     = 80
        ip_protocol = "tcp"
        cidr_ipv4   = "0.0.0.0/0"
        description = "Allow HTTPS traffic from the Internet"
      }
    }

    egress_rules = {
      https = {
        from_port   = 443
        to_port     = 443
        ip_protocol = "tcp"
        cidr_ipv4   = "0.0.0.0/0"
        description = "Allow HTTPS traffic to the Internet"
      }
    }
  }



  ecs = {

    security_group_id = "sg-067142e2e92d16871"


    ingress_rules = {
     http = {
      from_port   = 80
      to_port     = 80
      ip_protocol = "tcp"
      cidr_ipv4   = "0.0.0.0/0"
      description = "Allow HTTP traffic to ECS task"
    }
  }

    egress_rules = {
      https = {
        from_port   = 443
        to_port     = 443
        ip_protocol = "tcp"
        cidr_ipv4   = "0.0.0.0/0"
        description = "Allow HTTPS traffic to the Internet"
      }
    }
  }



 aurora = {

  security_group_id = "sg-05b6b122e5d3d0baf"

  ingress_rules = {
    postgres = {
      from_port                     = 5432
      to_port                       = 5432
      ip_protocol                   = "tcp"
      referenced_security_group_id  = "sg-067142e2e92d16871"
      description                   = "Allow PostgreSQL traffic from ECS"
    }
  }

  egress_rules = {
    https = {
      from_port = 443
      to_port   = 443
      ip_protocol = "tcp"
      cidr_ipv4 = "0.0.0.0/0"
      description = "Allow HTTPS traffic to the Internet"
    }
  }
}




}












aws_region = "us-east-1"